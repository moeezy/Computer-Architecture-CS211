
#include <string.h> 
#include <stdio.h> 
#include <stdlib.h> 
#include <ctype.h>


int main(int argc, char **argv){
if (argc < 2){
    printf("Please pass in a string\n");
    return -1;
}

char *buff;
size_t len = strlen(argv[1]);
buff = malloc(sizeof(char) * len);
strncpy(buff, argv[1], len);
//printf("%s\n", buff);
int spaceNum = 0;

//counts and accounts for spaces in string
for(int j = 0; j < len; j++){
    if(!isalpha(buff[j])){
        spaceNum ++;
    }
}

char *final = malloc((sizeof(char) * len) - spaceNum);
int final_ptr = 0;
char temp; 

for(int i = 0; i < len; i++){
    char c = buff[i];
    if(isalpha(c) && !isspace(c)){
        final[final_ptr] = tolower(c);
        final_ptr++;
    }   
    //printf("%s\n", final);
}

free(buff);
//printf("%s\n", final); //gets string without spaces

for(int i = 0; i < (len - spaceNum); i++){
    for(int j = i+1; j < (len - spaceNum); j++){
        if(final[i] > final[j]){
            temp = final[i];
            final[i] = final[j];
            final[j] = temp;
        }

    }
}


printf("%s\n", final);
free(final);

return 0;
}