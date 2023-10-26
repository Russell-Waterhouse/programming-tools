struct Node <'a> {
    value: i64,
    next: Option<&'a Node<'a>> ,
}


fn main(){
    println!("Hello, World");
    let node = Node {
        value: 10,
        next: None,
    };

    let head = Node {
        value: 1,
        next: Some(&node),
    };
}
