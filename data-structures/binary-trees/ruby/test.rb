require_relative 'binary-tree'

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

def main
  test_insert
end

main
