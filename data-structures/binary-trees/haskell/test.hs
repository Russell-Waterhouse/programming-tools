import BinaryTree (BinaryTree(..), insert, delete, find, traverse, height)


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

main :: IO ()
main = do 
    testInsertIntoEmpty
    testInsertSameValue
    testInsertLeft
    testInsertRight
