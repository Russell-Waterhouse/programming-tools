#ifndef stack
#define stack

typedef struct Node {
    int value;
    struct Node* next;
} Node;

Node* push(Node* head, Node* newNode);
Node* pop(Node** head);
char* to_string(Node* head);

#endif

