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
      @tail.next.previous = @tail
      @tail = @tail.next
    end
  end

  def remove_tail
    temp = @tail.value
    if @tail.previous
      @tail.previous.next = nil
      @tail = @tail.previous
    else
      @tail = @head = nil
    end
    return temp
  end

  def contains (val)
    if (@head and @tail)
      current = @head
      while(current)
        return true if current.value == val
        current = current.next
        return false if current == nil
      end
    end
  end
end

class MakeNode
  attr_accessor :value, :next, :previous
  def initialize (value)
    @value = value
    @next = nil
    @previous = nil
  end
end