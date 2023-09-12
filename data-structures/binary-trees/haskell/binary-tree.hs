module BinaryTree where

data BinaryTree = BinaryTree 
    {   val :: Int
    ,   left :: BinaryTree
    ,   right :: BinaryTree
    } 
    | EmptyNode
    deriving (Show, Eq)

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


delete = undefined

find = undefined

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

