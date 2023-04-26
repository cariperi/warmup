# LIFO last in first out data structure

class Stack
  attr_accessor :contents

  def initialize
    @contents = []
  end

  def push(x)  #adds element x to the stack and returns the new stack
    @contents.empty? ? @contents = [x] : @contents.concat([x])
  end

  def pop #removes the top element and returns the element
    @contents.delete_at(-1)
  end

  def count #returns the number of elements on the stack
    counter = 0
    @contents.each {|x| counter += 1}
    counter
  end

  def peek #returns the top element (but does not remove it)
    @contents[-1]
  end

  def max #finds and returns the largest value in the stack
    max = 0
    @contents.each {|x| max = x if x > max}
    max
  end
end

stack = Stack.new
stack.push(1)
stack.push(5)
stack.push(2)
stack.push(4)
stack.push(3)

stack.pop
stack.pop
p stack.count
p stack.peek
p stack.max