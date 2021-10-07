#include <string.h> 
#include <stdio.h> 
#include <stdlib.h> 
#include <ctype.h>
 
struct BSTNode{
    int data;
    struct BSTNode* right;
    struct BSTNode* left;
} ;
 
struct BSTNode* root;
 
void insert(int val, struct BSTNode* tree){
    if(tree == NULL){
        tree = malloc(sizeof(struct BSTNode));
        tree->data = val;
        tree->right = NULL;
        tree->left = NULL;
        root = tree;
        printf("inserted\n");
        return;
 
    }
 
    else if(val > tree->data){
            //go right subtree
            if(tree->right == NULL){
                struct BSTNode *filler = malloc(sizeof(struct BSTNode));
                filler->data = val;
                tree->right = filler;
                filler->right = NULL;
                filler->left = NULL;
                printf("inserted\n");
                return;
            }
            insert(val, tree->right);
 
    }
    else if(val < tree->data){
            //go to left subtree
            if(tree->left == NULL){
                struct BSTNode *filler = malloc(sizeof(struct BSTNode));
                filler->data = val;
                tree->left = filler;
                filler->right = NULL;
                filler->left = NULL;
                printf("inserted\n");
                return;
            }
            insert(val, tree->left);
 
    }
    else if(val == tree->data){
        printf("not inserted\n");
        return;
    }
    else{
        printf("insert error %d %d\n", tree->data, val);
    }
    //
    return;
 
}
 
void search(int val, struct BSTNode* tree){
    if(tree == NULL){
        printf("absent\n");
        return;
 
    }
    else if(val == tree->data){
        printf("present\n");
        return;
    }
 
    else if(val > tree->data){
            //go right subtree
            if(tree->right == NULL){
                printf("absent\n");
                return;
            }
            search(val, tree->right);
 
    }
    else if(val < tree->data){
            //go to left subtree
            if(tree->left == NULL){
                printf("absent\n");
                return;
            }
            search(val, tree->left);
 
        }
    }
 
//get right most value in left subtree
// int maxLeft(struct BSTNode* travNode, struct BSTNode* parent){
//     int i;
//     if(travNode != NULL && travNode->right == NULL){
//         if(travNode->left != NULL){
//             i = travNode->data;
//             parent->right = travNode->left;
//             free(travNode);
//             return i;
//         }
//         else{
//         i = travNode->data;
//         free(travNode);
//         return i;
//         }
//         return i;
//     }
//     else if(travNode != NULL && travNode->right != NULL){
//         maxLeft(travNode->right, travNode);
//     }
//     else{
//         printf("maxLeft error");
//     }
    
//     return 911;
// }
int maxLeft(struct BSTNode* trav, struct BSTNode* parent){
    if(trav->right == NULL && trav->left == NULL && trav == parent->left){
        int i = trav->data;
        free(trav);
        parent->left = NULL;
        return i;
    }
    while(trav->right != NULL){
        parent = trav;
        trav = trav->right;
        
    }
    int i = trav->data;
    if(trav->left != NULL){
        parent->right = trav->left;
        free(trav);
    }
    else{
        free(trav);
        parent->right = NULL;
    }
    
    return i;
}
 
void delete(int val, struct BSTNode* tree){
    //actual delete method 1
        if(tree == NULL){
            printf("absent\n");
            return;
 
        }
        if(root->data == val){
            if(root->right == NULL && root->left == NULL){
                free(tree);
                root = NULL;
                printf("deleted\n");
                return;
            }
            else if(root->right != NULL && root->left == NULL){
                struct BSTNode* temp = root->right;
                free(root);
                root = temp;
                printf("deleted\n");
                return;
            }
            else if(root->left != NULL && root->right == NULL){
                struct BSTNode* temp = root->left;
                free(root);
                root = temp;
                printf("deleted\n");
                return;
            }
            else if(root->right != NULL && root->left != NULL){
                root->data = maxLeft(root->left, root);
                printf("deleted\n");
                // printf("%d", root->data);
                return;
            }
            // free(tree);
            // root = NULL;
            // return;
        }
        //actual delete method 2
        // else if(val == tree->data){
        //     if(tree->right == NULL && tree->left == NULL){
        //         //tree = NULL;
        //         free(tree);
        //         printf("deleted\n");
        //         return;
        //     }
        //     else if(tree->right == NULL && tree->left != NULL){
        //         struct BSTNode* pointer = tree->left;
        //         tree->data = pointer->data;
        //         tree->right = pointer->right;
        //         tree->left = pointer->left;
        //         free(pointer);
        //         printf("deleted\n");
        //         return;
        //         }
 
        //     else if(tree->right != NULL && tree->left == NULL){
        //         struct BSTNode* pointer = tree->right;
        //         tree->data = pointer->data;
        //         tree->right = pointer->right;
        //         tree->left = pointer->left;
        //         free(pointer);
        //         printf("deleted\n");
        //         return;
        //     }
        //     else if(tree->right != NULL && tree->left != NULL){
        //         //printf("avery delete check\n");
        //         tree->data = maxLeft(tree->left, tree);
        //         printf("deleted\n");
        //         return;
 
        //     }
 
        //     }
            else if(val > tree->data){
                if(tree->right == NULL){
                    printf("absent\n");
                    return;
                }
                else{
                    if(tree->right->data == val){
                        if(tree->right->right == NULL && tree->right->left == NULL){
                            free(tree->right);
                            tree->right = NULL;
                            printf("deleted\n");
 
                        }
                        else if(tree->right->left != NULL && tree->right->right == NULL){
                            struct BSTNode* temp = tree->right->left;
                            free(tree->right);
                            tree->right = temp;
                            printf("deleted\n");
 
 
                        }
                        else if(tree->right->right != NULL && tree->right->left == NULL){
                            struct BSTNode* temp = tree->right->right;
                            free(tree->right);
                            tree->right = temp;
                            printf("deleted\n");
                        }
                        else if(tree->right->right != NULL && tree->right->left != NULL){
                            tree->right->data = maxLeft(tree->right->left, tree->right);
                            //tree->right->data = maxLeft(tree->right->left, tree->right);
                            printf("deleted\n");
                            return;
                        }
                    }
                    else{
                        delete(val, tree->right);
                    }
                    
                }
 
            }
 
            else if(val < tree->data){
                if(tree->left == NULL){
                    printf("absent\n");
                    return;
                }
                else{
                    if(tree->left->data == val){
                        if(tree->left->left == NULL && tree->left->right == NULL){
                            free(tree->left);
                            tree->left = NULL;
                            printf("deleted\n");
 
                        }
                        else if(tree->left->right != NULL && tree->left->left == NULL){
                            struct BSTNode* temp = tree->left->right;
                            free(tree->left);
                            tree->left = temp;
                            printf("deleted\n");
 
 
                        }
                        else if(tree->left->left != NULL && tree->left->right == NULL){
                            struct BSTNode* temp = tree->left->left;
                            free(tree->left);
                            tree->left = temp;
                            printf("deleted\n");
                        }
                        else if(tree->left->left != NULL && tree->left->right != NULL){
                            tree->left->data = maxLeft(tree->left->left, tree->left);
                            //tree->left->data = maxLeft(tree->left->left, tree->left);
                            printf("deleted\n");
                            return;
                        }
                    }
                    else{
                        delete(val, tree->left);
                    }
                    
                }
 
            }
            return;
    }
 
void printNodes(struct BSTNode* tree){
    if(tree != NULL){
        printf("(");
        if(tree->left != NULL){
            printNodes(tree->left);
        }
        // printf("(");
        // printNodes(tree->left);
        printf("%d", tree->data);
        if(tree->right != NULL){
            printNodes(tree->right);
        }
        
        printf(")");
    }
    
    return;
}
 
void freeTree(struct BSTNode* tree){
    if(tree == NULL){
        return;
        }
    freeTree(tree->left);
    freeTree(tree->right);
    free(tree);
    return;
}
 
int main(int argc, char **argv){
 
    int data;
    char c;
    while(scanf("%c", &c) != -1){
    
      if(c == 'i'){
          //printf("A\n");
          scanf("%d", &data);
          insert(data, root);
          //printNodes(root);
 
      }
      else if(c == 'd'){
        //printf("B\n");
        scanf("%d", &data);
        delete(data, root);
        //printNodes(root);
      }
 
      else if(c == 's'){
          //printf("C\n");
          scanf("%d", &data);
          search(data, root);
          //printNodes(root);
          
      }
 
       else if(c == 'p'){
          // printf("D\n");
        //    if(root == NULL){
        //        printf("ROOT IS NULL");
        //    }
           printNodes(root);
           printf("\n");
          
       }
 
    
    }
 
    
    freeTree(root);
    return EXIT_SUCCESS;
 
}
 
 

