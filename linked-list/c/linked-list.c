#include <stdlib.h>
#include <stdio.h>

typedef struct Node {
    struct Node* next;
    int* value;
} Node;
    

int printlist(struct Node* head);
struct Node* addItem(struct Node* head, int val);


int printList(struct Node* head){
    Node* curr = head;
    while (curr -> next != NULL) {
        printf("%d", *(curr->value));
        curr = curr -> next;
    }
    return 0;
}

struct Node* addItem(struct Node* head, int val) {
    // TODO: there's a more elegant way of doing this, I just can't remember it
    // on the ferry right now
    if(head == NULL) {
        struct Node* item = malloc(sizeof(Node*));
        if (item == NULL) {
            printf("Malloc failed");
            return NULL;
        }
        item -> next = NULL;
        item -> value = &val;
        return item;
    }

    struct Node* curr = head;
    while (curr -> next != NULL) {
        curr = curr -> next;
    }
    struct Node* item = malloc(sizeof(Node*));
    if (item == NULL) {
        printf("Malloc failed");
        return head;
    }
    item -> next = NULL;
    item -> value = &val;
    curr -> next = item;
    return head;
}

int main(){
    printf("Hello, World!");
    return 0;
}

