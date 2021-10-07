#include <string.h> 
#include <stdio.h> 
#include <stdlib.h> 
#include <ctype.h>

 struct stack_node{
    char* data;
    struct stack_node* next;
} ;

struct stack_node* head;

//push function
/*Have newnode.next point to whatever node is already the top of the stack
head points to top element in stack
so head must be set to new node
arrow notation for ptrs, . for objects
*/
void push(char* c){
    struct stack_node *newhead = malloc(sizeof(struct stack_node));
    newhead->data = c;
    newhead->next = head;
    head = newhead;
    //printf("Pushed");
    //char out = *c;
    //printf("%c", *c);
}

//working on pop
//use pointers to access pointers
//also use pointers to derefrence
/*
Need seperate cases if there are items in the stack and if there is nothing in the stack
case 1 is nothing is in the stack
case 2 is there are items in the stack
*/
char* pop(){
    if(head == NULL){
        char *x = "v";
        return x;
    }
    char* c = head->data;
    struct stack_node* headcpy = head;
    head = head->next;
    free(headcpy);
    //printf("Popped");
    //printf("%c", *c);
    return c;
} 

//frees nodes at end
//goes through all active nodes and advances the ptr, copies it beforehand, and frees it
void freeNodes(){
    if(head == NULL){
        free(head);
    }
    while(head!=NULL){
        struct stack_node* headcpy = head;
        head = head->next;
        free(headcpy);
    }
    free(head);
}

//frees nodes and prints out expected characters needed to pop off the stack
void freeNodesExpect(){
    char* fin;
    if(head == NULL){
        free(head);
    }
    while(head!=NULL){
        struct stack_node* headcpy = head;
        fin = headcpy->data;
        head = head->next;

        if(*fin == '('){
            printf(")");
        }
        else if(*fin == '['){
            printf("]");
        }

        else if(*fin == '{'){
            printf("}");
        }
        free(headcpy);
    }
    
}

//compares both chars, returns 1 if true, 0 if false
int compare(char open, char close){
    if((open == '(') && (close == ')')){
        return 1;
    }
    else if((open == '{') && (close == '}')){
        return 1;
    }
    else if((open == '[') && (close == ']')){
        return 1;
    }
    else{
        return 0;
    }
}

int main(int argc, char **argv){
if (argc != 2){
    printf("Please pass in a string\n");
    return EXIT_FAILURE;
}

else{

    size_t len = strlen(argv[1]);
    char *arr;
    arr = malloc(sizeof(char) * len);
    char* check;
    
    strncpy(arr, argv[1], len);
    //printf("%s\n", arr);


    for(int i = 0; i < len; i++){
    char* c = arr+i;
    if(*c == '{' || *c == '(' || *c == '['){
        push(c);
    }
    else if(*c == '}' || *c == ')' || *c == ']'){

        check = pop();
        if(*check == 'v'){
            printf("%i" , i);
            printf("%c", ':');
            printf("%c", ' ');
            printf("%c", *c);
            freeNodes();
            free(arr);
            return EXIT_FAILURE;
        }
        else{
        if(!compare(*check, *c)){ //checks if its same character, not if its the corresponding character
            //printf("RIP dif values sad\n");
            printf("%i" , i);
            printf("%c", ':');
            printf("%c", ' ');
            printf("%c", *c);
            freeNodes();
            free(arr);
            return EXIT_FAILURE;
        }
        }
    }
    /*else{
        printf("Error, improper input\n");
        freeNodes();
        free(arr);
        return EXIT_FAILURE;
    }*/
    
} 
//if(isEmpty()){
   //if it is not empty, have a loop to write out closing parameters
//}
    if(head != NULL){
       // printf("Incomplete!\n");
        printf("%s" , "open");
        printf("%c", ':');
        printf("%c", ' ');
        freeNodesExpect();
        free(arr);
        return EXIT_FAILURE;
    }



    free(arr);
    freeNodes();
    //printf("Success!\n");
    return EXIT_SUCCESS;
}


}