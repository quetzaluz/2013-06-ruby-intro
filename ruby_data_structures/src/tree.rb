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

  def contains
  end

end