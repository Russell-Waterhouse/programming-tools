

data Node = Node 
    { val :: Int
    , next :: Node
    } | EmptyNode deriving (Show, Eq)


tailInsert :: Node -> Int -> Node
tailInsert EmptyNode value = Node value EmptyNode
tailInsert head value = Node (val head) (tailInsert (next head) value)


headInsert :: Node -> Int -> Node
headInsert head value = Node value head


printList :: Node -> IO ()
printList = do print 


purgeValue :: Node -> Int -> Node
purgeValue EmptyNode _ = EmptyNode
purgeValue head value = let
        headIsValue = value == val head
    in
        if headIsValue then
            purgeValue (next head) value
        else
            Node (val head) $ purgeValue (next head) value

main :: IO ()
main = do
    let n1 = EmptyNode
    print n1
    let n2 = Node 10 n1
    print n2

    let n3 = tailInsert n2 20
    printList n3
    
    let n4 = headInsert n3 5
    printList n4

    let n5 = purgeValue n4 10
    printList n5

