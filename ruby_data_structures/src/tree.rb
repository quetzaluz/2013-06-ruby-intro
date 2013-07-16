class Tree
  attr_accessor :value, :children

  def initialize (value)
    @value = value
    @children = []
  end

  def add_child (value)
    @children << Tree.new(value)
  end

  def remove_child

  end

  def contains(value)
    result = false
    for child in @children
      result = true if child.value == value
      result = child.contains(value) if child.children and !result
    end
    return result
  end

end