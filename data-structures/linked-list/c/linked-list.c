#include <stdlib.h>
#include <stdio.h>

typedef struct Node {
    struct Node* next;
    int value;
} Node;
    
typedef struct List {
    Node* head;
} List;

int printlist(List* list);
List* addItem(List* list, int val);
List* remove_item(List* list, int val);
int free_list(List* list);


int printList(List* list){
    Node* curr = list -> head;
    while (curr != NULL) {
        printf("%d\n", (curr->value));
        curr = curr -> next;
    }
    return 0;
}

List* addItem(List* list, int val) {
    Node* head = list -> head;
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
        list -> head = item;
        return list;
    }

    Node* curr = head;
    while (curr -> next != NULL) {
        curr = curr -> next;
    }
    Node* item = malloc(sizeof(Node));
    if (item == NULL) {
        printf("Malloc failed");
        return list;
    }
    item -> next = NULL;
    item -> value = val;
    curr -> next = item;
    return list;
}

List* remove_item(List* list, int val) {
    if (list == NULL) {
        printf("cannot remove item from a null list");
        return list;
    }
    Node* curr = list -> head;
    // todo: finish this function
}

int free_list(List* list) {
    Node* curr = list -> head;
    while(curr != NULL) {
        Node* next = curr -> next;
        free(curr);
        curr = next;
    }
    free(list);
    return 0;
}

int main(){
    List* list = malloc(sizeof(List));
    if (list == NULL) {
        printf("Malloc for list failed");
        return -1;
    }
    list = addItem(list, 20);
    list = addItem(list, 30);
    list = addItem(list, 31);
    list = addItem(list, 32);
    list = addItem(list, 33);
    list = addItem(list, 34);
    list = addItem(list, 35);
    printList(list);
    free_list(list);
    return 0;
}
