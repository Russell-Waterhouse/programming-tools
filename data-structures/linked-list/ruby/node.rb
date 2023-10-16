class Node

  @val
  @next

  def initialize(value:, next_node:)
    @val = value
    @next = next_node
  end

  def val
    @val
  end

  def next
    @next
  end

  def set_val(value)
    @val = value
  end

  def set_next(next_node)
    @next = next_node
  end
end
