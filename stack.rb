class Stack
  def initialize(size)
    @size = size
    @stack = Array.new(@size)
  end
  
  def pop
    return nil unless !@stack.first.nil?
    item = self.look
    top = @stack.index(item)
    @stack[top] = nil
    item
  end
  
  def push(element)
    return nil unless (@stack.last.nil? && !element.nil?)
    @stack.each_with_index { |thing,index|
      if thing.nil? 
        @stack[index] = element
        break
      end  
    }
    self
  end
  
  def size
    @stack.length
  end
  
  def look
    @stack.reverse_each.detect { |x| !x.nil? }
  end
  
  private
  
  def full?
    @stack.all? { |thing| !thing.nil? }
  end
  
  def empty?
    @stack.all? { |thing| thing.nil? }
  end
end