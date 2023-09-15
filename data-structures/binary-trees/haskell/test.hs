{-# LANGUAGE ScopedTypeVariables #-}
import BinaryTree (BinaryTree(..), insert, delete, find, traverseTree, height)


insert' :: Int -> BinaryTree -> BinaryTree
insert' = flip insert

testTree :: BinaryTree
testTree = insert' 2 $ insert' 1 $ insert' 3 $ insert' (-1) $ insert' 0 $ insert' 99 EmptyNode
--           99
--        0    
--    -1     3 
--         1
--           2 


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
    let tree = testTree
    let expected = "-1 0 1 2 3 99 "
    let actual = traverseTree tree
    if expected == actual 
    then putStrLn "Test traversal: Passed"
    else putStrLn "Test traversal: Failed"

testHeight :: IO ()
testHeight = do
    let expectedEmpty = 0
    let actualEmpty = height EmptyNode
    let actualFull = height testTree 
    let expectedFull = 5
    if expectedEmpty == actualEmpty && expectedFull == actualFull
    then putStrLn "Test height: Passed"
    else putStrLn "Test height: Failed"

testFind :: IO ()
testFind = do
    let actualEmpty:: BinaryTree = find EmptyNode 99
    let expectedFullFind:: BinaryTree = BinaryTree 2 EmptyNode EmptyNode
    let actualFullFind:: BinaryTree = find testTree 2
    if actualEmpty == EmptyNode && actualFullFind == expectedFullFind
    then putStrLn "Test find: Passed"
    else putStrLn "Test find: Failed"

testDeleteEmptyTree :: IO ()
testDeleteEmptyTree = do
    let actualResult = delete EmptyNode $ BinaryTree 1 EmptyNode EmptyNode
    if actualResult == EmptyNode 
    then putStrLn "Test Delete from empty tree: Passed"
    else putStrLn "Test Delete from empty tree: Failed"
    
testDeleteEmptyNode :: IO ()
testDeleteEmptyNode = do
    let tree :: BinaryTree = BinaryTree 1 EmptyNode EmptyNode
    let actualResult :: BinaryTree = delete tree EmptyNode 
    if actualResult == tree
    then putStrLn "Test Delete empty node: Passed"
    else putStrLn "Test Delete empty node: Failed"

testDeleteLeafNode :: IO ()
testDeleteLeafNode = do
    let tree :: BinaryTree = BinaryTree 1 EmptyNode EmptyNode
    let actualResult :: BinaryTree = delete tree tree 
    if actualResult == EmptyNode
    then putStrLn "Test Delete Leaf Node: Passed"
    else putStrLn "Test Delete Leaf Node: Failed"

testDeleteOneChild = do
    let tree = BinaryTree 1 EmptyNode $ BinaryTree 2 EmptyNode EmptyNode
    let expected = BinaryTree 2 EmptyNode EmptyNode
    let actual = delete tree tree
    if expected == actual 
    then putStrLn "Test delete node with one child: Passed"
    else putStrLn "Test delete node with one child: Failed"

main :: IO ()
main = do 
    testInsertIntoEmpty
    testInsertSameValue
    testInsertLeft
    testInsertRight
    testTraverse
    testHeight
    testFind
    testDeleteEmptyTree
    testDeleteEmptyNode
    testDeleteOneChild

