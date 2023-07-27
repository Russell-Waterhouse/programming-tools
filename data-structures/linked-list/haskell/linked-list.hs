

data Node = Node 
    { val :: Int
    , next :: Node
    } | EmptyNode deriving (Show, Eq)


insert :: Node -> Int -> Node
insert EmptyNode value = Node value EmptyNode
insert head value = Node (val head) (insert (next head) value)

main :: IO ()
main = do
    let n1 = EmptyNode
    print n1
    let n2 = Node 10 n1
    print n2

    let n3 = insert n2 20
    print n3


