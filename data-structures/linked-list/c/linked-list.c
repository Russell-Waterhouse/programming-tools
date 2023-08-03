#include <stdlib.h>
#include <stdio.h>
#include "linked-list.h"


int print_list(List* list){
    Node* curr = list -> head;
    while (curr != NULL) {
        printf("%d->", (curr->value));
        curr = curr -> next;
    }
    printf("NULL
");
    return 0;
}

List* tail_insert(List* list, int val) {
    Node* head = list -> head;
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

List* head_insert(List* list, int val) { 
    Node* new = malloc(sizeof(Node));
    if (new == NULL) { 
        printf("Malloc failed");
        return list;
    }
    new -> value = val;
    new -> next = list -> head;
    list -> head = new;
    return list;
}

List* remove_node(List* list, Node* node) {
    if (list == NULL) {
        printf("cannot remove item from a null list");
        return list;
    }
    Node* curr = list -> head;
    if(curr == node) {
        list -> head = curr ->next;
        free (node);
        return list;
    }
    while (curr -> next != node) {
        if (curr == NULL) {
            printf("node not found in list");
            return list;
        }
        curr = curr -> next;
    }
    Node* n = curr -> next;
    curr -> next = curr -> next -> next;
    free(n);
    return list;
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

