#include <stdlib.h>
#include <stdio.h>
#include "linked-list.h"

int main(){
    List* list = malloc(sizeof(List));
    if (list == NULL) {
        printf("Malloc for list failed");
        return -1;
    }
    list = tail_insert_verbose(list, 20);
    list = tail_insert_verbose(list, 30);
    list = tail_insert_verbose(list, 31);
    list = tail_insert_verbose(list, 32);
    list = tail_insert_verbose(list, 33);
    list = tail_insert_verbose(list, 34);
    list = tail_insert_verbose(list, 35);
    print_list(list);
    free_list(list);
    return 0;
}

