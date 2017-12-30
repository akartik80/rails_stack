require_relative 'stack_dsl'

RubyStack.new_stack do
  push 1 # 1
  puts pop
  # puts pop
  # multiply
  # divide
  # add
  # subtract
  push 10 # 10
  push 20 # 10, 20
  print_stack
  add # 30
  print_stack
  push 60 # 30, 60
  print_stack
  divide # 2
  print_stack
  push 5 # 2, 5
  print_stack
  divide # 2
  print_stack
  push 4 # 2, 4
  print_stack
  subtract # 2
  print_stack
  push 10 # 2, 10
  print_stack
  multiply # 20
  print_stack
  # multiply # error
end
