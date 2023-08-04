module LinkedList where

data Node = Node 
    { val :: Int
    , next :: Node
    } | EmptyNode deriving (Show, Eq)


tailInsert :: Node -> Int -> Node
tailInsert EmptyNode value = Node value EmptyNode
tailInsert head value = Node (val head) (tailInsert (next head) value)


headInsert :: Node -> Int -> Node
headInsert head value = Node value head


printList :: Node -> String
printList EmptyNode = ""
printList node = show (val node) ++ " -> " ++ printList (next node)


removeNode :: Node -> Int -> Node
removeNode EmptyNode _ = EmptyNode
removeNode head value = let
        headIsValue = value == val head
    in
        if headIsValue then
            removeNode (next head) value
        else
            Node (val head) $ removeNode (next head) value

