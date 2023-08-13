#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include "linked-list.h"

int test_tail_insert();
int test_head_insert();
int test_size();
int test_remove_node();
int test_print_list();

int main(){
    test_tail_insert();
    test_head_insert();
    test_size();
    test_remove_node();
    test_print_list();
}

int test_tail_insert(){
    List* list = malloc(sizeof(List));
    list -> head = NULL;
    if (list == NULL) {
        printf("Malloc for list failed");
        return -1;
    }
    tail_insert(list, 2);
    tail_insert(list, 1);
    char* expected = "2 -> 1 -> ";
    char* result = print_list(list);
    int differences = strcmp(result, expected);
    if (!differences) {
        printf("Test Tail Insert: Passed\n");
    } else {
       printf("Test Tail Insert: Failed\n");
    }
    free(result);
    free_list(list);
    return 0;
}

int test_head_insert() {
    List* list = malloc(sizeof(List));
    if (list == NULL) {
        printf("Malloc for list failed");
        return -1;
    }
    list -> head = NULL;
    head_insert(list, 2);
    head_insert(list, 1);
    char* expected = "1 -> 2 -> ";
    char* result = print_list(list);
    int differences = strcmp(result, expected);
    if (!differences) {
        printf("Test Tail Insert: Passed\n");
    } else {
        printf("Test Tail Insert: Failed\n");
    }
    free(result);
    free_list(list);
    return 0;
}

int test_size() {
    List* list = malloc(sizeof(List));
    if (list == NULL) {
        printf("Malloc for list failed");
        return -1;
    }
    list -> head = NULL;
    head_insert(list, 1);
    tail_insert(list, 2);
    tail_insert(list, 3);
    int result = size(list);
    int expected = 3;
    if (expected == result) {
        printf("Test Size: Passed\n");
    } else {
        printf("Test Size: Failed\n");
    }
    return 0;
}

int test_remove_node() {
    List* list = malloc(sizeof(List));
    if (list == NULL) {
        printf("Malloc for list failed");
        return -1;
    }
    list -> head = NULL;
    head_insert(list, 1);
    tail_insert(list, 2);
    tail_insert(list, 3);
    Node* n1 = list -> head;
    Node* n2 = n1 -> next;
    // remove the middle node test case
    char* expected1 = "1 -> 3 -> ";
    remove_node(list, n2);
    char* actual1 = print_list(list);
    //remave head node test case
    remove_node(list, n1);
    char* expected2 = "3 -> ";
    char* actual2 = print_list(list);
    int differences1 = strcmp(expected1, actual1);
    int differences2 = strcmp(expected2, actual2);
    if (!differences1 && !differences2) {
        printf("Test Remove: Node Passed\n");
    } else {
        printf("Test Remove: Node Failed\n");
    }
    return 0;
}

int test_print_list() {
    List* list = malloc(sizeof(List));
    if (list == NULL) {
        printf("Malloc for list failed");
        return -1;
    }
    list -> head = NULL;
    head_insert(list, 1);
    tail_insert(list, 2);
    tail_insert(list, 3);
    char* expected = "1 -> 2 -> 3 -> ";
    char* actual = print_list(list);
    int differences = strcmp(expected, actual);
    if (!differences) {
        printf("Test Print: List Passed\n");
    } else {
        printf("Test Print: List Failed\n");
    }
    return 0;
}
