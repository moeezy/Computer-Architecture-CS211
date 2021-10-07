#include <string.h> 
#include <stdio.h> 
#include <stdlib.h> 
#include <ctype.h>

 struct LinkedListNode{
    int data;
    struct LinkedListNode* next;
} ;

struct LinkedListNode* head;

//push function
/*Have newnode.next point to whatever node is already the top of the stack
head points to top element in stack
so head must be set to new node
arrow notation for ptrs, . for objects
*/
void insert(int val){
    if(head == NULL){
        struct LinkedListNode *headNew = malloc(sizeof(struct LinkedListNode));
        headNew->data = val;
        headNew->next = NULL;
        head = headNew;
        return;
    }
    else if(val < head->data){
        struct LinkedListNode *newhead = malloc(sizeof(struct LinkedListNode)); 
        newhead->data = val;
        newhead->next = head;
        head = newhead;  
        return;
        
        }
    else if(val > head->data){
        struct LinkedListNode *newnode = malloc(sizeof(struct LinkedListNode)); 
        newnode->data = val;
        newnode->next = NULL;
        if(head->next == NULL){
            head->next = newnode;
            return;
            
        }
        else{//error when adding node to end of list if one does not exist already
            struct LinkedListNode *prev;
            struct LinkedListNode *ahead;
            prev = head;
            ahead = head->next;
            if(prev->data == val){
                    return;
                }

            while(ahead != NULL){
                if(ahead->data > val){
                    prev->next = newnode;
                    newnode->next = ahead;
                    return;

                }
                if(ahead->data == val){
                    return;
                }
                prev = prev->next;
                ahead = ahead->next;

            }
            if(prev->next == NULL){
                prev->next = newnode;
                
            }
        }
    }

    // newhead->data = val;
    // newhead->next = head;
    //head = newhead;
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
void delete(int val){
    if(head == NULL){

    }
    else if(head->data == val){
        struct LinkedListNode *headcpy = head;
        head = head->next;
        free(headcpy);
    }
    else{
        struct LinkedListNode *prev;
        struct LinkedListNode *ahead;
        prev = head;
        ahead = head->next;
        while(ahead != NULL){
            if(ahead->data == val){
                prev->next = ahead->next;
                ahead->next = NULL;
                free(ahead);
                break;
            }
            prev = prev->next;
            ahead = ahead->next;
        }
    }
   
} 

//frees nodes at end
//goes through all active nodes and advances the ptr, copies it beforehand, and frees it
void freeNodes(){
    // if(head == NULL){
    //     free(head);
    // }
    while(head!=NULL){
        //printf("%d\n", head->data);
        struct LinkedListNode* headcpy = head;
        head = head->next;
        free(headcpy);
    }
    //free(head);
}

void numOfNodes(){
    int i = 0;
    struct LinkedListNode* iter = head;
    while(iter != NULL){
        //printf("%d, %p\n", (iter->data), iter);
        i++;
        iter = iter->next;
    }
    printf("%i", i);
    printf(" ");
    printf(":");
}

void printList(){
    struct LinkedListNode* iter = head;
    int num;
    while(iter != NULL){
        num = iter->data;
        printf(" ");
        printf("%i", num);
        iter = iter->next;
    }
    printf("\n");
}



int main(int argc, char **argv){
// FILE* file;

// if((file = fopen(argv[1],"r"))==NULL){
//     printf("error");
//     freeNodes();
//     return EXIT_FAILURE;
// }

// else{
    // file = fopen(argv[1],"r");
    int data;
    char c;
    while(scanf("%c %d", &c, &data) != -1){
        //while(!feof(file)){
    //   fscanf(file,"%c\t%d\n",&c,&data);
      //int *dataPtr = &data;
      if(c == 'i'){
          insert(data);
          numOfNodes();
          printList();
          

      }
      else if(c == 'd'){
        delete(data);
        numOfNodes();
        printList();
        // printf("\n");
      }
    //   else{
    //       printf("Error");
    //     //   fclose(file);
    //       freeNodes();
    //       return EXIT_FAILURE;
    //   }
    }

    
    
//}
    // fclose(file);
    freeNodes();
    //printf("Success!\n");
    return EXIT_SUCCESS;

}