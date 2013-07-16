class LinkedList
  #add tail, remove tail, contains
  attr_accessor :head, :tail
  def initialize
    @head = nil
    @tail = nil
  end

  def add_tail (value)
    unless @tail
      @tail = @head = MakeNode.new(value)
    else
      @tail.next = MakeNode.new(value)
      @tail = @tail.next
    end
  end

  # def remove_tail
  # end

  # def contains
  # end
end

class MakeNode
  attr_accessor :value, :next
  def initialize (value)
    @value = value
    @next = nil
  end
end