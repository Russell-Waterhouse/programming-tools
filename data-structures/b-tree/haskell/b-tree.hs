module BTree where 

data BTree = BTree
    { minDegree :: Int
    , values :: [Int]
    , children :: [BTree]
    }
    | EmptyNode
    deriving (Show, Eq)

insert = undefined

delete = undefined

height = undefined

traverseTree = undefined

