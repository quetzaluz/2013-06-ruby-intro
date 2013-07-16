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
end