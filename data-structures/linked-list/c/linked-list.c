#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include "linked-list.h"

#define INIT_PRINT_BUFFER_SIZE 255
#define MAX_STR_SIZE_FOR_INT 10
#define SIZE_OF_ARROW_STR 4

char* int_to_string(int n) {
    int size_of_string_representation = snprintf(NULL, 0, "%d", n);
    size_of_string_representation++; // add 1 for terminating '\0' character
    char* buffer = malloc(sizeof(size_of_string_representation));
    snprintf(buffer, size_of_string_representation, "%d", n);
    return buffer;
}

char* print_list(List* list) {
    int buffer_size = INIT_PRINT_BUFFER_SIZE;
    char* print_buffer = malloc(buffer_size);
    Node* curr = list -> head;
    int i = 0;
    while (curr != NULL) {
        char* curr_val_str = int_to_string(curr -> value);
        int curr_val_str_len = strlen(curr_val_str);

        // double buffer size if we're running out
        while (i + curr_val_str_len + MAX_STR_SIZE_FOR_INT  + SIZE_OF_ARROW_STR > buffer_size){
            buffer_size = buffer_size * 2;
            print_buffer = realloc(print_buffer, buffer_size);
        }

        // Copy current value into print_buffer
        for(int j = 0; j < curr_val_str_len; j++) {
            print_buffer[i++] = curr_val_str[j];
        }
        free(curr_val_str);
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

