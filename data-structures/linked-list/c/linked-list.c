#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include "linked-list.h"

#define PRINT_BUFFER_SIZE 255
#define ASCII_INT_OFFSET 48

char int_to_char(int n) {
    if (n > 9 || n < 0) {
        printf("n out of range: %d", n);
        return '0';
    }
    return n + ASCII_INT_OFFSET;
}

char* print_list(List* list) {
    Node* curr = list -> head;
    char* print_buffer = malloc(sizeof(char) * PRINT_BUFFER_SIZE);
    int i = 0;
    while (curr != NULL) {
        if (i + 5 > PRINT_BUFFER_SIZE) {
            printf("Would have overrun the buffer, exiting early");
            print_buffer[i] = '\0';
            return print_buffer;
        }
        // I have simplified this because I'm trying to show how
        // linked lists work in c, not how difficult it is to
        // safely build strings out of integers
        // This will fail as soon as curr->value is negative or greater than 9
        print_buffer[i++] = int_to_char(curr -> value);
        print_buffer[i++] = ' ';
        print_buffer[i++] = '-';
        print_buffer[i++] = '>';
        print_buffer[i++] = ' ';
        curr = curr -> next;
    }
    print_buffer[i] = '\0';
    return print_buffer;
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

int size(List* list) {
    Node* curr = list -> head;
    int list_size = 0;
    while (curr != NULL) {
        list_size++;
        curr = curr -> next;
    }
    return list_size;
}

