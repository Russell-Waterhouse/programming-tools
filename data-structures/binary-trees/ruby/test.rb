require_relative 'binary-tree'

def test_insert
  tree = BinaryTree(99)
  puts "hello, world!"
  puts "#{tree.inspect}"
end

def main
  test_insert
end

main
