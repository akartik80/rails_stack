require 'logger'
LOGGER = Logger.new(STDOUT)

class Stack
  def initialize
    @stack = []
  end

  def push(val)
    raise('No value found to push') unless val
    @stack.push(val)
    LOGGER.debug("Stack: #{@stack}")
  end

  def pop
    if @stack.empty?
      puts('Stack is empty')
    else
      puts @stack.pop
      LOGGER.debug("Stack: #{@stack}")
    end
  end

  def arithmetic_operation
    if @stack.length >= 2
      first_element = @stack.pop
      second_element = @stack.pop
      @stack.push(yield(first_element, second_element))
      LOGGER.debug("Stack: #{@stack}")
    else
      puts('Stack has less than 2 elements')
    end
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

end
