module BinaryTree where

data BinaryTree = BinaryTree 
    {   val :: Int
    ,   left :: BinaryTree
    ,   right :: BinaryTree
    } 
    | EmptyNode
    deriving (Show, Eq)

instance Ord BinaryTree where 
    (<)  bt1 bt2 = val bt1 < val bt2
    (<=) bt1 bt2 = val bt1 <= val bt2    
    (>=) bt1 bt2 = val bt1 >= val bt2
    (>)  bt1 bt2 = val bt1 > val bt2

insert :: BinaryTree -> Int -> BinaryTree
insert EmptyNode value = BinaryTree value EmptyNode EmptyNode
insert head value = 
    let headValue = val head
        leftChild = left head
        rightChild = right head
    in
        if value == headValue 
        then head
        else if value > headValue
        then BinaryTree headValue leftChild $ insert rightChild value
        else BinaryTree headValue (insert leftChild value) rightChild


delete :: BinaryTree -> BinaryTree -> BinaryTree
delete EmptyNode _ = EmptyNode
delete head EmptyNode = head
delete head targetNode | head < targetNode = BinaryTree (val head) (left head) (delete (right head) targetNode)
delete head targetNode | head > targetNode = undefined
delete head targetNode | head == targetNode = undefined
        
predecessorOrSuccessor :: BinaryTree -> BinaryTree
predecessorOrSuccessor EmptyNode = EmptyNode
predecessorOrSuccessor head | left head == EmptyNode && right head /= EmptyNode = right head
predecessorOrSuccessor head | left head /= EmptyNode && right head == EmptyNode = left head
predecessorOrSuccessor head = rightmostNonemptyLeaf $ left head

rightmostNonemptyLeaf :: BinaryTree -> BinaryTree
rightmostNonemptyLeaf EmptyNode = EmptyNode
rightMostNonemptyLeaf head = 
    if right head == EmptyNode 
    then head
    else rightMostNonemptyLeaf  $ right head

find :: BinaryTree -> Int -> BinaryTree
find EmptyNode _ = EmptyNode
find head searchValue | searchValue == val head = head 
find head searchValue | searchValue < val head = find (left head) searchValue
find head searchValue | searchValue > val head = find (right head) searchValue
    

-- an in-order traversal of the binary tree
traverseTree :: BinaryTree -> String
traverseTree EmptyNode = ""
traverseTree tree = 
    let leftSubtreeTraversal = traverseTree $ left tree
        rightSubtreeTraversal = traverseTree $ right tree
        value = show (val tree) ++ " "
    in leftSubtreeTraversal ++ value ++ rightSubtreeTraversal

height :: BinaryTree -> Int
height EmptyNode = 0
height tree = 
    let leftHeight = height $ left tree
        rightHeight = height $ right tree
        maxChildHeight = max leftHeight rightHeight
    in maxChildHeight + 1

