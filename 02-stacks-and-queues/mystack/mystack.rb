class MyStack
  attr_accessor :top

  def initialize
    @stack = Array.new
    self.top = nil
  end

  def push(item)
    @top = item
    @stack.unshift(item)
  end

  def pop
    @top = stack[1]
    @stack.shift
  end

  def empty?
    @stack.length === 0
  end
end
