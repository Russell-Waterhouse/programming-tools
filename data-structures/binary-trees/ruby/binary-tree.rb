class BinaryTree
  @value = 0
  @left = nil
  @right = nil

  def initialize(value)
    @value = value
  end

  def value()
    @value
  end

  def delete(node)
    if node == @left 
      @left = nil
      return node.value
    end
    if node == @right
      @right = nil
      return node.value
    end
  end

  def invert()
    # implemented just for the meme
    puts "not yet implemented"
  end

  def insert(value)
    if value == @value
      return self
    end
    if (value > @value && @right == nil)
      @right = BinaryTree.new(value)
      return @right.value
    end
    if (value < @value && @left == nil)
      @left = BinaryTree.new(value)
      return @left.value
    end
    if (value > @value && @right != nil)
      return @right.insert(value)
    end
    if (value < @value && @left != nil)
      return @left.insert(value)
    end
    raise "unexpected state Exception"
  end

  def height()
    if (@left == nil && @right == nil)
      return 1
    end
    if (@left == nil)
      return @right.height + 1
    end
    if (@right == nil)
      return @left.height + 1
    end
    return max(@right.height, @left.height) + 1
  end 

  def find(value)
    puts "not yet implemented"
  end

  def traverse()
    puts "not yet implemented"
  end
end
