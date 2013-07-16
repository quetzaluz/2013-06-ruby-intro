class Queue
  def initialize
    @length = 0
    @storage = []
  end

  def length
    @length
  end

  def add value 
    @storage[@length] = value
    @length += 1
  end

  def remove
    #Should remove in FIFO order
    unless @length <= 0
      @length -= 1
      @storage.shift
    end
  end
  def contains(value)
    @storage.include?(value)
  end
end