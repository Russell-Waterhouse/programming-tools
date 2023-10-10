#include <limits.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "stack.h"


void test_push_one() {
    Node* first = (Node*)malloc(sizeof(Node));
    first -> value = 99;
    if(first == NULL) {
        exit(EXIT_FAILURE);
    }

    Node* head = push(NULL, first);
    char* first_node_str = to_string(head);

    if (!strcmp("99 -> ", first_node_str)){
        printf("Testing Push: Passed\n");
    } else {
        printf("Testing Push: Passed\n");
    }

    free(head);
    free(first_node_str);
}

void test_push_several() {
    Node* node_0 = (Node*)malloc(sizeof(Node));
    Node* node_1 = (Node*)malloc(sizeof(Node));
    Node* node_2 = (Node*)malloc(sizeof(Node));
    Node* node_3 = (Node*)malloc(sizeof(Node));
    if (node_0 == NULL || node_1 == NULL || node_2 == NULL || node_3 == NULL) {
        printf("FAILURE ALLOCATING MEMORY");
        exit(EXIT_FAILURE);
    }

    node_0 -> value = 0;
    node_1 -> value = -100;
    node_2 -> value = 200;
    node_3 -> value = INT_MAX; 

    Node* head = push(NULL, node_0);
    head = push(head, node_1);
    head = push(head, node_2);
    head = push(head, node_3);

    char* stack_string = to_string(head);
    if (!strcmp("2147483647 -> 200 -> -100 -> 0 -> ", stack_string)) {
        printf("Testing Push with several elements: Passed\n");
    } else {
        printf("Testing Push with several elements: Failed\n");
    }

    free(node_0);
    free(node_1);
    free(node_2);
    free(node_3);
    free(stack_string);
}

void test_pop() {
    Node* node_0 = (Node*)malloc(sizeof(Node));
    Node* node_1 = (Node*)malloc(sizeof(Node));
    Node* node_2 = (Node*)malloc(sizeof(Node));
    Node* node_3 = (Node*)malloc(sizeof(Node));
    if (node_0 == NULL || node_1 == NULL || node_2 == NULL || node_3 == NULL) {
        printf("FAILURE ALLOCATING MEMORY");
        exit(EXIT_FAILURE);
    }

    node_0 -> value = 0;
    node_1 -> value = -100;
    node_2 -> value = 200;
    node_3 -> value = INT_MAX; 

    Node* head = push(NULL, node_0);
    head = push(head, node_1);
    head = push(head, node_2);
    head = push(head, node_3);

    char* stack_string_initial = to_string(head);
    int initial_test_state_correct = !strcmp("2147483647 -> 200 -> -100 -> 0 -> ", stack_string_initial);

    Node* popped_node = pop(&head);
    char* stack_string_pop1 = to_string(head);
    int pop1_state_correct = !strcmp("200 -> -100 -> 0 -> ", stack_string_pop1);
    
    if (initial_test_state_correct && pop1_state_correct) {
        printf("Pop test: Passed");
    } else {
        printf("Pop test: Failed");
    }

    free(node_0);
    free(node_1);
    free(node_2);
    free(node_3);
    free(stack_string_initial);
    free(stack_string_pop1);
}
    

int main() {
    test_push_one();
    test_push_several();
    test_pop();
    exit(EXIT_SUCCESS);
}

