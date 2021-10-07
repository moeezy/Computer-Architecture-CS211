#include <string.h> 
#include <stdio.h> 
#include <stdlib.h> 
#include <ctype.h>

//main method copied from mexp, will edit accordingly
/*Approach
Make a 2d array, first array will be 0 row
let v be the table, i be the row num, w be column num

if w is less than x(i), then it is undefined so be careful

how to read weights with names and their values? Struct?


*/

//OBSOLETE
//max method takes in the 2d matrix, the weight limit, row and column numbers, weight values and the values of the elements
// int max(int **matrix, int limit, int row, int col, int weights[], int values[]){
//     int i;
//     if(row < weights[row - 1]){
//         i = 0;
//     }
//     else if(matrix[row][col-1] < matrix[row - weights[row - 1]][col - 1] + values[row]){
//         i = 1;
//     }
//     else if(matrix[row][col-1] >= matrix[row - weights[row - 1]][col - 1] + values[row]){
//         i = 0;
//     }
   
//     return i;
// }


int main(int argc, char **argv){
if(argc != 3){
    printf("Error! Incorrect Number of Arguments!\n");
    return EXIT_FAILURE;
}


int weightLimit;
weightLimit = atoi(argv[1]);
if(weightLimit < 0){
    return EXIT_FAILURE;
}
// printf("This is weight limit ");
// printf("%i\n", weightLimit);
//ohhhhhh i see, it is using ascii, convert using atoi first


FILE* file;

if((file = fopen(argv[2],"r"))==NULL){
    printf("error");
    return EXIT_FAILURE;
}

else{
    file = fopen(argv[2],"r");
    int numOfElements;

    fscanf(file,"%i\n", &numOfElements);

    if(numOfElements < 0){
        fclose(file);
        return EXIT_FAILURE;
    }

    char **nameOfVars = malloc(sizeof(char *) * numOfElements); //array declaration for item names
    for(int i = 0; i < numOfElements; i++){
        nameOfVars[i] = malloc(sizeof(char) * 32);//32 for extra char
    }

    int *isVarUsed = malloc(sizeof(int) * numOfElements); //checks if variables are used, data is stored as 0 if no and 1 if yes
    for(int i = 0; i < numOfElements; i++){
        isVarUsed[i] = 0;
    }

    int **matrix = malloc(sizeof(int *) * (weightLimit+1)); //rows = number of weight , columns = number of elements
    
    for (int i = 0; i <= weightLimit; i++) {
	    matrix[i] = malloc(sizeof(int) * (numOfElements+1)); //swapped weight and num
        
    }
    int *weights = malloc(sizeof(int) * numOfElements);
    int *values = malloc(sizeof(int) * numOfElements);
    
    char strWeight[32]; //one extra character for null space 
    int one; //weight
    int two; //value

    for(int z = 0; z < numOfElements; z++){
        

            fscanf(file, "%s %i %i", strWeight, &one, &two); //reads file, inputs values
            if(one < 0 || two < 0){

                for(int i = 0; i < numOfElements; i++){
                    free(nameOfVars[i]);
                    }

                for(int s = 0; s <= weightLimit; s++){
                    free(matrix[s]);
                    
                    }
                free(matrix);
                free(nameOfVars);
                free(isVarUsed);
                free(weights);
                free(values);
                fclose(file);


                return EXIT_FAILURE;
            }
            strcpy(nameOfVars[z], strWeight);
            weights[z] = one;
            values[z] = two;
            //fscanf(file, "\n");

     
    }
    int maxPossible;// gets the maximum possible value so that you don't get above that
    for(int i = 0; i < numOfElements; i++){
        maxPossible += values[i];

    }




    int total;
    //i think i gotta change the whole array declaration stuff
    for(int i = 0; i <= weightLimit; i++){ //swapped weight and num here too
        for(int j = 0; j <= numOfElements; j++){

            if(i == 0 || j == 0){
                matrix[i][j] = 0; //if limit is 0, put 0
            }
            else{
                if(i < weights[j - 1]){
                    matrix[i][j] = matrix[i][j-1];
                }
                else{
                    if(matrix[i][j - 1] < matrix[i - weights[j-1]][j-1] + values[j - 1]){
                        if(maxPossible < matrix[i - weights[j-1]][j-1] + values[j - 1]){
                            matrix[i][j] = matrix[i-1][j]; //if exceeds max possible limit
                        }
                        else{
                            matrix[i][j] =  matrix[i - weights[j-1]][j-1] + values[j - 1];
                        }
                        
                    }
                    else{
                        matrix[i][j] = matrix[i][j-1];
                    }
                }

                // int q = max(matrix, weightLimit, i, j, weights, values); 
                // //implement max method stuff
                // if(q == 0){
                //     matrix[i][j] = matrix[i][j-1]; //error here
                // }
                // else if(q == 1){
                //     matrix[i][j] = matrix[i - weights[i-1]][j - 1] + values[i-1];
                // }

            }
            

        }
    

    }
    total = matrix[weightLimit][numOfElements];
    // printf("This is the max weight ");
    // printf("%i\n", total);

    // printf("%i\n", weightLimit);
    // printf("%i\n", numOfElements);

    // prints elements
    // for(int i = 0; i <= weightLimit; ++i){
    //     for(int j = 0; j <= numOfElements; ++j){
    //         printf("%i", matrix[i][j]);
    //         // if(j + 1 != numOfElements){
    //             printf(" ");
    //         // }
    //     }
    //     printf("\n");
    // }

    //determine which elements are used
    int e = weightLimit;
    for(int i = numOfElements; i > 0; i--){
        
        if(matrix[e][i] != matrix[e][i-1]){
            isVarUsed[i-1] = 1;
            e-=weights[i-1];
        }

    }

    int weightTaken = 0; //weight that is used from the items

    for(int i = 0; i < numOfElements; i++){
        if(isVarUsed[i] == 1){
            weightTaken += weights[i];
        }
    }


    for(int s = 0; s <= weightLimit; s++){
        free(matrix[s]);
        
        }
    free(matrix);
    free(weights);
    free(values);
    
    


    for(int i = 0; i < numOfElements; i++){
        if(isVarUsed[i] == 1){
            printf("%s\n", nameOfVars[i]);
        }
        //printf("%s\n", nameOfVars[i]);
        free(nameOfVars[i]);
    }
    free(nameOfVars);
    free(isVarUsed);
    
    printf("%d", total);
    printf(" / ");
    printf("%d\n", weightTaken);
    // printf("%i\n", weightLimit);
    fclose(file);
    
    //printf("Success!\n");
    return EXIT_SUCCESS;
    }
    

    
    
}