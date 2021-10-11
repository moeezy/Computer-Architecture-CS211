#include<stdio.h>
#include<stdlib.h>


//helper methods

//multiplies matrices, is fed in both matrices + dimensions of both matrices
double** multiplyMatrix(double **matA, double **matB, int r1, int c1, int r2, int c2)
{
    //allocates memory to create new matrix
    double **result = allocateMatrix(r1, c2);

    for(int q =0; q<r1; q++){
    
        for(int e =0; e<c2; e++){
            //finds row and col values for new matrix
      double *col = obtainR(c1, q,matA);
      double *row = obtainC(r2, e, matB);

      double num=0;
      for(int z = 0;z<r2;z++)
      {
        num = num+(row[z]*col[z]);
      }
    
      free(row);
      free(col);
      
      result[q][e] = num;
        }
    }

    
    return result;
}



//produces transpose of matrix
double** transposeMatrix(double** mat, int row, int col){
    
    double ** matTran = allocateMatrix(col, row);

    for(int q=0; q<row; q++)
        for(int e=0; e<col; e++)
            matTran[e][q] = mat[q][e];
    return matTran;        
}




//produces inverse of matrix
double** inverseMatrix(double **matA, int dimension)
{
   double f;
   double**matI = malloc(dimension *sizeof(double*));
   for(int q=0; q<dimension; q++)
   {
       matI[q] = malloc(dimension*sizeof(double));
   }
   for(int q=0; q<dimension; q++)
   {
       for(int e = 0; e<dimension; e++)
       {
           if (q==e)
           {
               matI[q][e] = 1;
           }
           else
           {
               matI[q][e] = 0;
           }
       }
   }

   for(int q=0; q<dimension; q++)
   {
       for(int e =0; e< dimension; e++)
       {
           if(q!=e)
           {
               f = matA[e][q]/matA[q][q];
               for(int z = 0; z<dimension; z++)
               {
                   matA[e][z] = matA[e][z] - f*matA[q][z];
                   matI[e][z] = matI[e][z] - f*matI[q][z];
               }
           }
       }

   }

   for(int q=0; q<dimension; q++)
   {
       for(int e =0; e< dimension; e++)
       { 
            matI[q][e] = matI[q][e]/matA[q][q];  
       }
   }

   return matI;

}



//allocates memory for matrix
double ** allocateMatrix(int rows, int columns){
  double ** matrix = (double **)malloc(sizeof(double*) *rows);
  for(int q = 0; q < rows; q++) {
          matrix[q] = (double *)malloc(sizeof(double) *columns);
      }
  return matrix;
}



double *obtainC(int size, int colNum, double **matrix){
  double *col = malloc(sizeof(double*)*size);
  
  for(int q = 0;q < size;q++){
    col[q]= matrix[q][colNum];
    
  }
  
  return col;
}



double *obtainR(int size, int rowNum, double **matrix){
  double *row = malloc(sizeof(double*)*size);
  for(int q =0;q<size;q++){
    row[q] =matrix[rowNum][q];
  }
  return row;
}


//prints values of matrix
void MatrixOut(double** mat, int rows, int cols)
{
    for(int q=0; q<rows; q++)
    {
        for(int e=0; e<cols; e++)
            printf("%.0f", mat[q][e]);
        printf("\n");
    }
}


//frees all memory allocated for matrix
void release(double** mat, int rows)
{
    for(int q = 0; q < rows; q++)
        free(mat[q]);
    free(mat);
}




//read training data, treat training data as rows of a matrix 
//invert to find the weight of each element of the matrix
//use that to estimate price of new house given weights of certain elements

int main(int argc, char** argv)
{
    FILE * train = fopen (argv[1], "r");
    int att;
    int values;
    fscanf(train, "%d\n%d", &att, &values);

    
    double** matX = malloc(values * sizeof(double*));
    for(int q = 0; q < values; q++)
        matX[q] = malloc((att+1) * sizeof(double));
    
    double** matY = malloc(values * sizeof(double*));
    for(int q = 0; q < values; q++)
        matY[q] = malloc(sizeof(double));
    
   
    for(int q = 0; q < values; q++)
    {
        for(int e = 0; e < att; e++)
            fscanf(train, "%lf,", &matX[q][e+1]);
        fscanf(train, "%lf\n", &matY[q][0]);
    }
    for(int q = 0; q < values; q++)
        matX[q][0]=1;
    FILE * test = fopen (argv[2], "r");
    int values2;
    fscanf(test, "%d\n", &values2);

    
    double** matU = malloc(values2 * sizeof(double*));
    for(int q = 0; q < values2; q++)
        matU[q] = malloc((att+1) * sizeof(double));

   
    for(int q = 0; q < values2; q++)
    {
        for(int e = 0; e < att; e++)
            fscanf(test, "%lf,", &matU[q][e+1]);
        fscanf(test, "\n");
    }
    for(int q = 0; q < values2; q++)
        matU[q][0]=1;
  
    double **matQ = transposeMatrix(matX, values, att+1);
    double **matR = multiplyMatrix(matQ, matX, att+1, values, values, att+1);
    double **matS = inverseMatrix(matR, att+1);
    double **matT = multiplyMatrix(matS, matQ, att+1, att+1, att+1, values);
    double **matW = multiplyMatrix(matT, matY, att+1, values, values, 1);
    double **matV = multiplyMatrix(matU, matW, values2, att+1, att+1, 1);
    MatrixOut(matV, values2, 1);
    release(matX, values);
    release(matY, values);
    release(matQ, att+1);
    release(matR, att+1);
    release(matS, att+1);
    release(matT, att+1);
    release(matU, values2);
    release(matV, values2);
    release(matW, att+1);
    return 0;
}











