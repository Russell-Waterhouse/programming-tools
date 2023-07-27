

data Node = Node 
    { val :: Int
    , next :: Node
    } | EmptyNode deriving (Show, Eq)



main :: IO ()
main = do
    let n1 = EmptyNode
    print n1
    let n2 = Node 10 n1
    print n2


