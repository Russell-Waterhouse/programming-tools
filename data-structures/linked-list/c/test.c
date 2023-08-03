#include <stdlib.h>
#include <stdio.h>
#include "linked-list.h"

int main(){
    List* list = malloc(sizeof(List));
    if (list == NULL) {
        printf("Malloc for list failed");
        return -1;
    }
    list = tail_insert(list, 20);
    list = tail_insert(list, 30);
    list = tail_insert(list, 31);
    list = tail_insert(list, 32);
    list = tail_insert(list, 33);
    list = tail_insert(list, 34);
    list = tail_insert(list, 35);
    list = head_insert(list, 10);
    print_list(list);
    Node* head = list -> head;
    remove_node(list, head -> next);
    remove_node(list, head);
    print_list(list);
    free_list(list);
    return 0;
}

