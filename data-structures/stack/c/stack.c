#include <stdio.h>
#include <stdlib.h>


typedef struct Node {
    int value;
    struct Node* next;
} Node;


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
    return "TODO";
}


int main() {
    Node* first = malloc(sizeof(Node));
    first -> value = 99;
    if(first == NULL) {
        return -1;
    }

    Node* head = push(NULL, first);
    char* first_node_str = to_string(head);
    printf("%s\n", first_node_str);
}

