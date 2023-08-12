require_relative "node"

class LinkedList

  @size
  @head

  def initialize()
    @size = 0
    @head = nil
  end

  def insert_head(val)
    new_head = Node.new(value: val, next_node: @head)
    @head = new_head
    @size += 1
    self
  end

  def insert_tail(val)
    if @head == nil
      @head = Node.new(value: val, next_node: nil)
      return
    end
    current = @head
    while current.next != nil
      current = current.next
    end
    current.set_next Node.new(value: val, next_node: nil)
  end

  def delete_node(node)
    if @head == node
      @head = node.next
      return
    end

    current = @head
    while current.next != node
      current = current.next
    end
    if current.next != node
      puts "not found"
      return
    end
    current.set_next current.next.next
    @size -= 1
    return
  end

  def size()
    @size
  end

  def to_string()
    current = @head
    list_str = ""
    while current != nil do
      list_str += "Node: #{current.val} -> "
      current = current.next
    end
    list_str
  end

  def head()
    @head
  end
end
