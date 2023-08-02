typedef struct Node {
    struct Node* next;
    int value;
} Node;
    
typedef struct List {
    Node* head;
} List;

int print_list(List* list);
List* tail_insert_verbose(List* list, int val);
List* tail_insert_concise(List* list, int val);
List* remove_item(List* list, int val);
int free_list(List* list);

