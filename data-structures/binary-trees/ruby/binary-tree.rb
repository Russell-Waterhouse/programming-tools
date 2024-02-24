class BinaryTree
  @value = 0
  @left = nil
  @right = nil

  def initialize(value)
    @value = value
  end

  def value
    @value
  end

  def delete(node)
    # TODO: Handle case where we need to delete this node
    if node == @left
      @left = nil
      return node.value
    end

    if node == @right
      @right = nil
      return node.value
    end

    return @left.delete(node) if node.value < @value

    @right.delete(node)
  end

  def insert(value)
    return self if value == @value

    if value > @value && @right.nil?
      @right = BinaryTree.new(value)
      return @right.value
    end

    if value <= @value && @left.nil?
      @left = BinaryTree.new(value)
      return @left.value
    end

    return @right.insert(value) if value > @value && !@right.nil?

    return @left.insert(value) if value <= @value && !@left.nil?

    raise 'unexpected state Exception'
  end

  def height
    return 1 if @left.nil? && @right.nil?

    return @right.height + 1 if @left.nil?

    return @left.height + 1 if @right.nil?

    max(@right.height, @left.height) + 1
  end

  def find(value)
    puts "not yet implemented"
  end

  def traverse()
    "#{@left&.traverse} #{@value} #{@right&.traverse}"
  end
end
