require_relative "node"

class LinkedList

  @size
  @head

  def initialize()
    @size = 0
    @head = nil
  end

  def insert_head(head, val)
    new_head = Node.new(value: val, next_node: head)
    @head = new_head
  end

  def insert_tail()
    # todo
  end

  def delete_node()
    # todo
  end

  def size()
    # todo
  end

  def print_list()
    current = @head
    while current != nil do
      puts "Node: #{current.val}"
      current = current.next
    end
  end
end
