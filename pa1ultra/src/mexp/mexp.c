#include <string.h> 
#include <stdio.h> 
#include <stdlib.h> 
#include <ctype.h>

//returns matrix following it being raised to exponent
int **productMatrix(int exponent, int rows, int** matrix){
    int **prod = malloc(sizeof(int *) * rows);
    int **iter = malloc(sizeof(int *) * rows);
    for(int i = 0; i < rows; i++){
        prod[i] = malloc(sizeof(int) * rows);
        iter[i] = malloc(sizeof(int) * rows);
    }
    for(int i = 0; i < rows; i++){
        for(int j = 0; j < rows; j++){
            iter[i][j] = matrix[i][j];
        }
    }

    //if exponent is 0; return identity matrix
    int exp = exponent;
    if(exp == 0){
        for(int i = 0; i < rows; i++){
            for(int j = 0; j < rows; j++){
                if(i == j){
                    prod[i][j] = 1;
                }
                else{
                    prod[i][j] = 0;
                }
            }

        }
        for(int i = 0; i < rows; i++){
            for(int j = 0; j < rows; j++){
                matrix[i][j] = prod[i][j];
            }
        }
        for(int i = 0; i < rows; i++){
            free(prod[i]);
        }
        free(prod);

        for(int i = 0; i < rows; i++){
            free(iter[i]);
        }
        free(iter);

        return matrix;
    }
    //if exponent is 1, return original matrix
    else if(exp == 1){
        for(int i = 0; i < rows; i++){
            free(prod[i]);
        }
        free(prod);

        for(int i = 0; i < rows; i++){
            free(iter[i]);
        }
        free(iter);

        return matrix;
    }
    else{
        for(int i = 0; i < rows; i++){
            for(int j = 0; j < rows; j++){
                prod[i][j] = 0;
            }
        }



        //actual matrix multiplication
        for(int r = 1; r < exp; r++){
            //  if(r!=1){
            //      for(int i = 0; i < rows; i++){
            //          for(int j = 0; j < rows; j++){
            //              iter[i][j] = prod[i][j];
            //          }
            //      }
            //  }

            for(int i = 0; i < rows; i++){
                for(int j = 0; j < rows; j++){
                    for(int k = 0; k < rows; k++){
                        prod[i][j]+= iter[i][k] * matrix[k][j];
      }
}
}           
            //to get product carried over into next multiplication
            for(int i = 0; i < rows; i++){
                     for(int j = 0; j < rows; j++){
                         iter[i][j] = prod[i][j];
                     }
                 }
                 //to get rid of the values of prod[i][j] carrying over the values from the previous multiplication
                 if(r != exp-1){
                 for(int i = 0; i < rows; i++){
                    for(int j = 0; j < rows; j++){
                        prod[i][j] = 0;
                    }
                }
                 }
        }
            
//          
            for(int i = 0; i < rows; i++){
                for(int j = 0; j < rows; j++){
                    matrix[i][j] = prod[i][j];
                }
                
        }
        

        for(int i = 0; i < rows; i++){
                free(prod[i]);
            }
            free(prod);

            for(int i = 0; i < rows; i++){
                free(iter[i]);
            }
            free(iter);
            return matrix;
        //freed nodes
        
    }
        for(int i = 0; i < rows; i++){
                free(prod[i]);
            }
            free(prod);

            for(int i = 0; i < rows; i++){
                free(iter[i]);
            }
            free(iter);
            return matrix;
}




int main(int argc, char **argv){
FILE* file;

if((file = fopen(argv[1],"r"))==NULL){
    printf("error");
    return EXIT_FAILURE;
}

else{
    file = fopen(argv[1],"r");
    int rows;

    fscanf(file,"%i\n", &rows);
    int **matrix = malloc(sizeof(int *) * rows);
    //int **finalMatrix = malloc(sizeof(int *) * rows);

    for (int i = 0; i < rows; ++i) {
	    matrix[i] = malloc(sizeof(int) * rows);
        //finalMatrix[i] = malloc(sizeof(int) * rows);
    }
    
    for(int i = 0; i < rows; i++){
        for(int j = 0; j < rows; j++){
            int val;
            fscanf(file, "%i", &val);
            matrix[i][j] = val;

        }
        fscanf(file, "\n");

    }
    int exponent;
    fscanf(file, "%i", &exponent);

    matrix = productMatrix(exponent, rows, matrix);

    for(int i = 0; i < rows; i++){
        for(int j = 0; j < rows; j++){
            printf("%i", matrix[i][j]);
            if(j + 1 != rows){
                printf(" ");
            }
        }
        printf("\n");
    }

    for(int i = 0; i < rows; i++){
        free(matrix[i]);
        //free(finalMatrix[i]);
        }
    free(matrix);
    //free(finalMatrix);
    

    fclose(file);
    
    //printf("Success!\n");
    return EXIT_SUCCESS;
    }
    

    
    
}
    

