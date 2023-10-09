#include <stdio.h>
#include <stdlib.h>
#include "stack.h"

#define INITIAL_STRING_BUFFER_SIZE 128
#define MAX_STR_CHARS 32 // the max number of characters that MAX_INT could take up

Node* push(Node* head, Node* newNode) {
    newNode -> next = head;
    return newNode;
}


Node* pop(Node* head) {
    Node* result = head;
    head = head -> next;
    return result;
}


char* to_string(Node* head) {
    unsigned long buffer_size = INITIAL_STRING_BUFFER_SIZE;
    char* string = (char*)malloc(sizeof(char) * buffer_size);
    if (string == NULL) {
        return "ERROR ALLOCATING MEMORY";
    }

    Node* current_node = head;
    unsigned long total_chars_written = 0;
    char* current_position = string;
    while(current_node != NULL) {
        int chars_written = snprintf(current_position, buffer_size, "%d -> ", current_node -> value);
        if (chars_written == 0) {
            free(string);
            return "ERROR WRITING STRING";
        }
        total_chars_written += chars_written;
        current_position += chars_written;

        if (buffer_size - total_chars_written < MAX_STR_CHARS) {
            buffer_size = buffer_size * 2;
            char* tmp = (char*)realloc(string, buffer_size);
            if (tmp == NULL) {
                free(string);
                return "ERROR ALLOCATING MEMORY";
            }
            string = tmp;
        }
        
        current_node = current_node -> next;
    }

    *current_position = '\0';

    return string;
}


