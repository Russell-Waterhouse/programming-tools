import BinaryTree (BinaryTree(..), insert, delete, find, traverseTree, height)


insert' :: Int -> BinaryTree -> BinaryTree
insert' = flip insert


testInsertIntoEmpty :: IO ()
testInsertIntoEmpty = do
    let result = insert EmptyNode 10
    let expected = BinaryTree 10 EmptyNode EmptyNode
    if result == expected
    then putStrLn "Test insert into empty tree: Passed"
    else putStrLn "Test insert into empty tree: Failed"

testInsertSameValue :: IO ()
testInsertSameValue = do
    let head = BinaryTree 10 EmptyNode EmptyNode
    let result = insert head 10
    let expected = head
    if result == expected
    then putStrLn "Test insert duplicate value: Passed"
    else putStrLn "Test insert duplicate value: Failed"

testInsertLeft :: IO ()
testInsertLeft = do
    let head = BinaryTree 10 EmptyNode EmptyNode
    let result = insert head 8
    let expected = BinaryTree 10 (BinaryTree 8 EmptyNode EmptyNode) EmptyNode
    if result == expected
    then putStrLn "Test insert left: Passed"
    else putStrLn "Test insert left: Failed"

testInsertRight :: IO ()
testInsertRight = do
    let head = BinaryTree 10 EmptyNode EmptyNode
    let result = insert head 12
    let expected = BinaryTree 10 EmptyNode (BinaryTree 12 EmptyNode EmptyNode)
    if result == expected
    then putStrLn "Test insert right: Passed"
    else putStrLn "Test insert right: Failed"

testTraverse :: IO ()
testTraverse = do
    let tree = insert' 2 $ insert' 1 $ insert' 3 $ insert' (-1) $ insert' 0 $ insert' 99 EmptyNode
    let expected = "-1 0 1 2 3 99 "
    let actual = traverseTree tree
    if expected == actual 
    then putStrLn "Test traversal: Passed"
    else putStrLn "Test traversal: Failed"

testHeight :: IO ()
testHeight = do
    let expectedEmpty = 0
    let actualEmpty = height EmptyNode
    let fullTree = insert' 2 $ insert' 1 $ insert' 3 $ insert' (-1) $ insert' 0 $ insert' 99 EmptyNode
    --          99
    --        0    
    --    -1     3 
    --         1
    --           2 
    let actualFull = height fullTree 
    let expectedFull = 5
    if expectedEmpty == actualEmpty && expectedFull == actualFull
    then putStrLn "Test height: Passed"
    else putStrLn "Test height: Failed"
    
main :: IO ()
main = do 
    testInsertIntoEmpty
    testInsertSameValue
    testInsertLeft
    testInsertRight
    testTraverse
    testHeight

