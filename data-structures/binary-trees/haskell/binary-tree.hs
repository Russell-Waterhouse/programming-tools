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

traverse = undefined

height = undefined

