require_relative "linked_list"



puts "Test started"
puts "Test insert"
l = LinkedList.new()

l.print_list

l.insert_head(nil, 10)
l.print_list

puts "Test finished"

