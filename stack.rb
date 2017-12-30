class Stack
  def initialize
    @stack = []
  end

  def push(val)
    @stack.push(val)
  end

  def pop
    raise 'Error in popping empty stack' if @stack.empty?
    @stack.pop
  end

  def arithmetic_operation
    raise 'Stack has less than 2 elements' if @stack.length < 2
    first_element = @stack.pop
    second_element = @stack.pop
    @stack.push(yield(first_element, second_element))
  end

  def add
    arithmetic_operation { |first_element, second_element| first_element + second_element }
  end

  def multiply
    arithmetic_operation { |first_element, second_element| first_element * second_element }
  end

  def subtract
    arithmetic_operation { |first_element, second_element| first_element - second_element }
  end

  def divide
    arithmetic_operation { |first_element, second_element| first_element / second_element }
  end

  def print_stack
    puts @stack.to_s
  end
end
