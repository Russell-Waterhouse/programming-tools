typedef struct Node {
    struct Node* next;
    int value;
} Node;
    
typedef struct List {
    Node* head;
} List;

int print_list(List* list);
List* tail_insert(List* list, int val);
List* head_insert(List* list, int val);
List* remove_node(List* list, Node* node);
int free_list(List* list);

