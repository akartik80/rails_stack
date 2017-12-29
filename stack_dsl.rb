require_relative 'stack'

def new_stack(&block)
  stack = Stack.new
  stack.instance_eval(&block)
end
