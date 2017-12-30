require_relative 'stack'

module RubyStack
  def self.new_stack(&block)
    stack = Stack.new
    stack.instance_eval(&block)
  end
end

