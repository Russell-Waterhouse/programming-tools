module Main where
import LinkedList (Node(..), tailInsert, headInsert, removeNode, printList)
import Control.Monad.RWS (MonadState(put))


testHeadInsert :: IO ()
testHeadInsert = do
    let result = headInsert (Node 2 EmptyNode) 1
    let expected = Node 1 (Node 2 EmptyNode)
    if result == expected
    then putStrLn "Test Head Insert: Passed"
    else putStrLn "Test Head Insert: Failed"

testTailInsert :: IO ()
testTailInsert = do
    let result = tailInsert (Node 2 EmptyNode) 1
    let expected = Node 2 (Node 1 EmptyNode)
    if result == expected
    then putStrLn "Test Tail Insert: Passed"
    else putStrLn "Test Tail Insert: Failed"

testRemoveNode :: IO ()
testRemoveNode = do
    -- TODO: I'm removing by valuue, not reference, and that's not right
    let result = removeNode (Node 2 (Node 1 EmptyNode)) 2
    let expected = Node 1 EmptyNode
    if result == expected
    then putStrLn "Test Remove Node: Passed"
    else putStrLn "Test Remove Node: Failed"

testPrintList :: IO ()
testPrintList = do
    let result = printList (Node 2 (Node 1 EmptyNode))
    let expected = "2 -> 1 -> "
    if result == expected
    then putStrLn "Test Print List: Passed"
    else putStrLn "Test Print List: Failed"

main :: IO ()
main = do
    testHeadInsert
    testTailInsert
    testRemoveNode
    testPrintList

