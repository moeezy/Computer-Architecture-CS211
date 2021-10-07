/* CS 211 PA1 Spring 2020: PROGRAM
 * Created for: Moeez Shahid
 */

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int main(int argc, char **argv)
{
   if(argc == 1){
       printf("...\n");
       return EXIT_SUCCESS;
   }
  /* thought 2 arg was a different case LOL
  else if(argc == 2){
       //printf("%s\n", argv[1]);
        char sentence[802];
        //for(int i = 1; i < argc; i++){
          //  char temp[700];
            strcpy(sentence, argv[1]);
            //strcat(temp, " ");
            //strcat(sentence, temp);
        //}
        //printf("%s\n", sentence);
        int num = 0;
        while(sentence[num]) {  
  
         
        if(sentence[num] == '!'){
            sentence[num] = '.';
        }
        else{
            if ((sentence[num] >= 65) && (sentence[num] <= 90))
            sentence[num] = sentence[num] + 32;   
        }

        num++; 
    } 
        printf("%s\n", sentence);
        return EXIT_SUCCESS;
        
   }
   */
    else{
        //printf("%s\n", argv[1]); debug
        char sentence[800];
        for(int i = 1; i < argc; i++){
            char temp[700];
            strcpy(temp , argv[i]); //initial declaration, used cpy cause cat gave some weird characters
           // printf("%s\n", temp); debug
            if(argc>(i+1)){
            strcat(temp, " ");
            }
            if(i == 1){
                strcpy(sentence, temp); //same as above comment
            }
            else{
            strcat(sentence, temp);
            //printf("%s\n", sentence); debug
            }
        }
        //printf("%s\n", sentence);
        int num = 0;
        while(sentence[num]) {  
         
        if(sentence[num] == '!'){
            sentence[num] = '.';
        }
        else{
            if ((sentence[num] >= 65) && (sentence[num] <= 90))
            sentence[num] = sentence[num] + 32;   
        }

        num++; 
    } 
        
        printf("%c", '(');
        printf("%s", sentence);
        printf("%c\n", ')');
        return EXIT_SUCCESS;
    }

    
      

    
}