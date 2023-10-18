require_relative 'binary-tree'

def test_tree
  tree = BinaryTree.new(50)
  tree.insert(25)
  tree.insert(10)
  tree.insert(75)
  tree.insert(40)
  tree.insert(60)
  tree.insert(90)
  tree
end

def test_insert
  tree = BinaryTree.new(99)
  tree.insert(500)
  tree.insert(50)
  if tree.traverse == ' 50  99  500 '
    puts 'Test Insertion: Passed'
  else
    puts 'Test Insertion: Failed'
  end
end

def test_traverse
  tree = test_tree
  traversal = tree.traverse
  if traversal == ' 10  25  40  50  60  75  90 '
    puts 'Test Traversal: Passed'
  else
    puts 'Test Traversal: Failed'
  end
end

def test_delete_head
  tree = test_tree
  tree.delete(tree)
  if traversal == ' 10  25  40  60  75  90 '
    puts 'Test Delete Head: Passed'
  else
    puts 'Test Delete Head: Failed'
  end
end

def main
  test_insert
  test_traverse
  test_delete_head
end

main
