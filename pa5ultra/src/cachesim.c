#include<stdio.h>
#include<stdlib.h>
#include<string.h>
//Moeez Shahid
//PA5: Cache Sim

//each cache is a 2d arr, one dimension representing a set with all the lines in that set, and the other representing each individual set
//each arr idx contains 3 elements, the tag stored(hexadecimal), the valid tag, and the overall age/oldness of the data in that slot
typedef struct cache{
    unsigned long int tag; //tag index put into cache
    int valid; //valid tag, -1 if invalid, 0 if valid(never sure with 0 and 1 so this makes it more obvious to me)
    int age; //used to see what data in the set was used first(for fifo), the lower the value the older it is
}cache;

//global variables

// //prefetch 0
int count = 0; //what is used to determine how old something is, no two tags will have the same age
int memoryReads = 0;
int memoryWrites = 0;
int cacheHits = 0;
int cacheMisses = 0;
// //prefetch 1
int pcount = 0;
int pmemoryReads = 0;
int pmemoryWrites = 0;
int pcacheHits = 0;
int pcacheMisses = 0;

//helper methods

//checks if sets is a power of 2
//returns 0 if false, 1 if true
int power2Check(int in){
  if (in == 0){
      return 0;
  }
    
  while (in != 1){
      if (in%2 != 0){
         return 0;
      }
      in = in/2;
  }
  return 1;
}

//returns 0 if invalid, 1 if input is 2, and log(x)/log(2) otherwise
int logar(int in){
    int result = 0;
    if (in == 0){
        return 0;
    }
    
    while (in != 1){
        if (in%2 != 0){
            return 0;
        }
        in = in/2;
        result++;
    }
  return result;
}

//start of important methods
//read is based on the pread method on the writeup simply without the implementation of prefetching


void read(unsigned long int tagIdx, unsigned long int setIdx, int lines, struct cache** cacheUsed){
    for(int i = 0; i < lines; i++){ //lines = lines per set
        if(cacheUsed[setIdx][i].valid == 0){ //checks if valid tag is valid
            if(cacheUsed[setIdx][i].tag == tagIdx){ // checks if tag is already in there
                // printf("%lx\n", tagIdx);
                cacheHits++;
                return;
            }  
            if(i == (lines - 1)){ //tag is not there, set is full, time to discard one line
                memoryReads++;
                cacheMisses++;

                int low = 0;
                for(int j = 0; j < lines; j++){//starts from leftmost element on set to find the oldest element
                    if(cacheUsed[setIdx][j].age <= cacheUsed[setIdx][low].age){
                        low = j;
                    }	
                }                
                count++;
                cacheUsed[setIdx][low].age = count;
                cacheUsed[setIdx][low].valid = 0;
                cacheUsed[setIdx][low].tag = tagIdx; //gets rid of oldest element, sets new tag + age

                return;
            }           
        }
        else{
            if(cacheUsed[setIdx][i].valid == -1){ //checks for invalid tag
            count++;
            cacheUsed[setIdx][i].age = count;

            memoryReads++;
            cacheMisses++;

            // printf("%lx\n", tagIdx);
            cacheUsed[setIdx][i].tag = tagIdx; //free space so fills in 
            cacheUsed[setIdx][i].valid = 0;

            return;
            }   
        }       
    }
    return;
}

//same as read but increment writes
void write(unsigned long int tagIdx, unsigned long int setIdx, int lines, struct cache** cacheUsed){
    for(int i = 0; i < lines; i++){
        if(cacheUsed[setIdx][i].valid == 0){
            if(cacheUsed[setIdx][i].tag == tagIdx){
                memoryWrites++;
                cacheHits++;

                return;
            }      
            if(i == (lines - 1)){
                memoryReads++;
                memoryWrites++;
                cacheMisses++;

                int low = 0;
                for(int j = 0; j < lines; j++){
                    if(cacheUsed[setIdx][j].age <= cacheUsed[setIdx][low].age){
                        low = j;
                    }	
                }
                count++;
                cacheUsed[setIdx][low].age = count;
                cacheUsed[setIdx][low].valid = 0;
                cacheUsed[setIdx][low].tag = tagIdx;

                return;
            }   
        }
        else{
            if(cacheUsed[setIdx][i].valid == -1){
            count++;
            cacheUsed[setIdx][i].age = count;

            memoryReads++;
            memoryWrites++;
            cacheMisses++;

            cacheUsed[setIdx][i].valid = 0;
            cacheUsed[setIdx][i].tag = tagIdx;

            return;
            } 
        }     
    }
    return;
}


//checks if x + 1 (y) is in cache. If not, puts it in 
void prefetchLoad(int lines, unsigned long int secondSetIdx, unsigned long int secondTagIdx, struct cache** cacheUsed){
    for(int i = 0; i < lines; i++){
        if(cacheUsed[secondSetIdx][i].tag == secondTagIdx){
                return;
            }
        else{
            if(cacheUsed[secondSetIdx][i].valid == -1){
            pcount++;
            cacheUsed[secondSetIdx][i].age = pcount;

            pmemoryReads++;
           
            cacheUsed[secondSetIdx][i].tag = secondTagIdx;
            cacheUsed[secondSetIdx][i].valid = 0;

            return;
        }
            if(i + 1 == lines){
                pmemoryReads++;

                int low = 0;
                for(int j = 0; j < lines; j++){
                    if(cacheUsed[secondSetIdx][j].age <= cacheUsed[secondSetIdx][low].age){
                        low = j;
                    }	
                }                
                pcount++;
                cacheUsed[secondSetIdx][low].age = pcount;
                cacheUsed[secondSetIdx][low].valid = 0;
                cacheUsed[secondSetIdx][low].tag = secondTagIdx;

                return;

            }
        }  
    }
    return;
}

//ty Professor Menendez for this method
void pread(unsigned long int tagIdx, unsigned long int setIdx, int lines, struct cache** cacheUsed, unsigned long int  secondTagIdx, unsigned long int secondSetIdx){
    for(int i = 0; i < lines; i++){
        if(cacheUsed[setIdx][i].valid == 0){
            if(cacheUsed[setIdx][i].tag == tagIdx){
                // printf("%lx\n", tagIdx);
                pcacheHits++;
                return;
            }  
            if(i == (lines - 1)){
                pmemoryReads++;
                pcacheMisses++;

                int low = 0;
                for(int j = 0; j < lines; j++){
                    if(cacheUsed[setIdx][j].age <= cacheUsed[setIdx][low].age){
                        low = j;
                    }	
                }                
                pcount++;
                cacheUsed[setIdx][low].age = pcount;
                cacheUsed[setIdx][low].valid = 0;
                cacheUsed[setIdx][low].tag = tagIdx;
                prefetchLoad(lines, secondSetIdx, secondTagIdx, cacheUsed);

                return;
            }           
        
        }
        else{
            if(cacheUsed[setIdx][i].valid == -1){
            pcount++;
            cacheUsed[setIdx][i].age = pcount;

            pmemoryReads++;
            pcacheMisses++;

            // printf("%lx\n", tagIdx);
            cacheUsed[setIdx][i].tag = tagIdx;
            cacheUsed[setIdx][i].valid = 0;

            prefetchLoad(lines, secondSetIdx, secondTagIdx, cacheUsed);

            return;
            }
            
        }       
    }
    return;
}

//same as pread but increments writes
void pwrite(unsigned long int tagIdx, unsigned long int setIdx, int lines, struct cache** cacheUsed, unsigned long int  secondTagIdx, unsigned long int secondSetIdx){
    for(int i = 0; i < lines; i++){
        if(cacheUsed[setIdx][i].valid == 0){
            if(cacheUsed[setIdx][i].tag == tagIdx){
                pmemoryWrites++;
                pcacheHits++;

                return;
            }      
            if(i == (lines - 1)){
                pmemoryReads++;
                pmemoryWrites++;
                pcacheMisses++;

                int low = 0;
                for(int j = 0; j < lines; j++){
                    if(cacheUsed[setIdx][j].age <= cacheUsed[setIdx][low].age){
                        low = j;
                    }	
                }
                count++;
                cacheUsed[setIdx][low].age = pcount;
                cacheUsed[setIdx][low].valid = 0;
                cacheUsed[setIdx][low].tag = tagIdx;

                prefetchLoad(lines, secondSetIdx, secondTagIdx, cacheUsed);

                return;
            }   
        
        }
        else{ 
            if(cacheUsed[setIdx][i].valid == -1){
            pcount++;
            cacheUsed[setIdx][i].age = pcount;

            pmemoryReads++;
            pmemoryWrites++;
            pcacheMisses++;

            cacheUsed[setIdx][i].valid = 0;
            cacheUsed[setIdx][i].tag = tagIdx;

            prefetchLoad(lines, secondSetIdx, secondTagIdx, cacheUsed);

            return;
            }   
        }     
    }
    return;
}

//method used to free 2d cache, same as 2d matrix from mexp
void freeCache(int sets, struct cache** cacheUsed){
    for(int i = 0; i < sets; i++){
        free(cacheUsed[i]);
    }
    free(cacheUsed);
    return;
}

//end of helper methods

//Disclaimer: Have not implemented LRU, any LRU Success is merely a lucky coincedence 
int main(int argc, char** argv){

    //checks for correct number of args, otherwise failure
    if(argc != 6){
        if(argc < 6){
            printf("Error! Not Enough Arguments!\n");
            return EXIT_FAILURE;
        }
        else{
            printf("Error! Too many Arguments!\n");
            return EXIT_FAILURE;
        }
        
    }

    int x;
    int lines;
    int sets;

    char* assoc = argv[2];
    int cacheSize = atoi(argv[1]);
    int blockOffset = atoi(argv[4]);

    int check1 = power2Check(cacheSize);
    int check2 = power2Check(blockOffset);
    //checks if either cacheSize or blockOffset are not powers of 2, if so quit
    if(check1 == 0 || check2 == 0){
        if(check1 == 0 && check2 == 0){
            printf("Error! Both the Cache Size and Block Size are not powers of two!\n");
            return EXIT_FAILURE;
        }
        else if(check1 == 0){
            printf("Error! The Cache Size is not a power of two!\n");
            return EXIT_FAILURE;
        }
        else if(check2 == 0){
            printf("Error! The Block Size is not a power of two!\n");
            return EXIT_FAILURE;
        }
    } 
    
    //variables for reading input
    unsigned long int firstAdr;
    char rw;

        FILE* file;
        file = fopen(argv[5], "r");
        //check if file doesn't open
        if(file == NULL){
            printf("Error, invalid file\n");
            return 0;
        }

        //check associativity and determine lines

        if(assoc[0] == 'd'){
            sets = cacheSize/blockOffset;
            lines = 1;
        }
        else if(assoc[5] == ':'){
            sscanf(assoc, "assoc:%d", &x);
            sets = cacheSize/(blockOffset * x);
            lines = x;
        }
        else{ //full associativity
            lines = cacheSize/blockOffset;
            sets = 1;
        }

        //checks bits taken up by block offset and set index
        int s = logar(sets);
        unsigned long int idx1 = ((1 << s) - 1);
        int b = logar(blockOffset);

        //constructs 2 2d caches, 1 for no prefetch and the other for prefetch
        struct cache** givenCache = (cache**)malloc(sets*sizeof(cache*));
        struct cache** pgivenCache = (cache**)malloc(sets*sizeof(cache*));
    
        for(int i = 0; i < sets; i++){
            givenCache[i] = (cache*)malloc((lines)*sizeof(cache));
            pgivenCache[i] = (cache*)malloc((lines)*sizeof(cache));
        }
        for(int i = 0; i < sets; i++){
            for(int j = 0; j < lines; j++){
                givenCache[i][j].valid = -1;
                pgivenCache[i][j].valid = -1;
            }
        }

        //reads input file (arg[5])
        while(fscanf(file, "%*x: %c %lx", &rw, &firstAdr) == 2){
            //bit shifting to get required indexes
            unsigned long int setIdx = (firstAdr >> b) &idx1;
            unsigned long int tagIdx = firstAdr >> (b + s);

            //add blockoffset to get 2nd address(x + 1)
            unsigned long int secondAdr = firstAdr + blockOffset;
            unsigned long int secondSetIdx = (secondAdr >> b) & idx1;
            unsigned long int secondTagIdx = secondAdr >> (b+s);

            //checks for read or write
            if(rw == 'R'){
                read(tagIdx, setIdx, lines, givenCache);
                pread(tagIdx, setIdx, lines, pgivenCache, secondTagIdx, secondSetIdx); //work on these two prefetch methods tomorrow!!!
            }
            
            else if(rw == 'W'){
                write(tagIdx, setIdx, lines, givenCache);
                pwrite(tagIdx, setIdx, lines, pgivenCache, secondTagIdx, secondSetIdx);
            }
        }
        fclose(file);

        //prints non prefetched cache data
        printf("Prefetch 0\n");
        printf("Memory reads: %d\n", memoryReads);
        printf("Memory writes: %d\n", memoryWrites);
        printf("Cache hits: %d\n", cacheHits);
        printf("Cache misses: %d\n", cacheMisses);

        //prints prefetched cache data
        printf("Prefetch 1\n");
        printf("Memory reads: %d\n", pmemoryReads);
        printf("Memory writes: %d\n", pmemoryWrites);
        printf("Cache hits: %d\n", pcacheHits);
        printf("Cache misses: %d\n", pcacheMisses);

        freeCache(sets, givenCache);
        freeCache(sets, pgivenCache);

    return EXIT_SUCCESS;
}

