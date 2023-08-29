class Queue
  def initialize(size)
    @size = size
    @store = Array.new(@size)
    @head, @tail = -1, 0
  end
  
  def dequeue
    return if empty?
   
    @tail = @tail.succ
    
    dequeued = @store[@head]
    @store.unshift(nil)
    @store.pop
    dequeued
  end
  
  def enqueue(element)
    return if full? || element.nil?

    @tail = @tail.pred
    @store[@tail] = element
    self 
  end
  
  def size
    @size
  end
  
  private
  
  def empty?
    @head == -1 && @tail == 0
  end

  def full?
    @tail.abs == @size
  end
end
