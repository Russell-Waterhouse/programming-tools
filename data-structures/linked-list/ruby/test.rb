require_relative "linked_list"
require_relative "node"



def test_insert_head()
  ll = LinkedList.new
  ll.insert_head(2)
  ll.insert_head(1)
  result = ll.to_string
  expected = "Node: 1 -> Node: 2 -> "
  if result == expected
    puts "Test Insert Head Passed"
  else
    puts "Test Insert Head Failed"
  end
end

def test_tail_insert()
  ll = LinkedList.new
  ll.insert_tail(2)
  ll.insert_tail(1)
  result = ll.to_string
  expected = "Node: 2 -> Node: 1 -> "
  if result == expected
    puts "Test Insert Tail Passed"
  else
    puts "Test Insert Tail Failed"
  end
end

def test_delete_node()
  ll = LinkedList.new
  ll.insert_head(1)
  ll.insert_tail(2)
  ll.insert_tail(3)

  n1 = ll.head
  n2 = n1.next
  n3 = n2.next
  ll.delete_node(n2)
  expected1 = "Node: 1 -> Node: 3 -> "
  result1 = ll.to_string

  ll.delete_node(n1)
  expected2 = "Node: 3 -> "
  result2 = ll.to_string

  if result1 == expected1 && result2 == expected2
    puts "Test Delete Node Passed"
  else
    puts "Test Delete Node Failed"
  end
end

def test_print_list()
  ll = LinkedList.new
  ll.insert_head(4)
  ll.insert_head(3)
  ll.insert_head(2)
  ll.insert_head(1)
  ll.insert_head(0)
  ll.insert_head(-1)
  expected = "Node: -1 -> Node: 0 -> Node: 1 -> Node: 2 -> Node: 3 -> Node: 4 -> "
  result = ll.to_string
  if result == expected
    puts "Test Print List Passed"
  else
    puts "Test Print List Failed"
  end
end

test_insert_head()
test_tail_insert()
test_delete_node()
test_print_list()

