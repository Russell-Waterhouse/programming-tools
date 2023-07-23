#include <stdlib.h>
#include <stdio.h>

typedef struct Node {
    struct Node* next;
    int value;
} Node;
    

int printlist(Node* head);
Node* addItem(Node* head, int val);


int printList(Node* head){
    Node* curr = head;
    while (curr != NULL) {
        printf("%d\n", (curr->value));
        curr = curr -> next;
    }
    return 0;
}

Node* addItem(Node* head, int val) {
    // TODO: there's a more elegant way of doing this, I just can't remember it
    // on the ferry right now
    if(head == NULL) {
        Node* item = malloc(sizeof(Node));
        if (item == NULL) {
            printf("Malloc failed");
            return NULL;
        }
        item -> next = NULL;
        item -> value = val;
        return item;
    }

    Node* curr = head;
    while (curr -> next != NULL) {
        curr = curr -> next;
    }
    Node* item = malloc(sizeof(Node));
    if (item == NULL) {
        printf("Malloc failed");
        return head;
    }
    item -> next = NULL;
    item -> value = val;
    curr -> next = item;
    return head;
}

int main(){
    Node* head = addItem(NULL, 20);
    head = addItem(head, 30);
    head = addItem(head, 31);
    head = addItem(head, 32);
    head = addItem(head, 33);
    head = addItem(head, 34);
    head = addItem(head, 35);
    printList(head);
    return 0;
}

