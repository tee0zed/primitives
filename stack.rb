# defines stack of fixed size

class Stack
  def initialize(size)
    @size = size
    @store = Array.new(size)
    @top = -1
  end
  
  def pop
    return nil if empty?
    
    popped = @store[@top]
    @store[@top] = nil
    @top -= 1
    popped
  end
  
  def push(element)
    return nil if full? || element.nil?
    
    @top += 1
    @store[@top] = element
    self
  end
  
  def size
    @size
  end
  
  def look
    @store[@top]
  end
  
  private
  
  def full?
    @top == @size - 1
  end
  
  def empty?
    @top == -1
  end
end
