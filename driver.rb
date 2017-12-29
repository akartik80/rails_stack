require_relative 'stack_dsl'

new_stack do
  # push 1 # 1
  # pop
  # pop
  push 111
  puts stack
  stack << 11111
  puts stack
  # multiply
  # divide
  # add
  # subtract
  # push 10 # 10
  # push 20 # 10, 20
  # add # 30
  # push 60 # 30, 60
  # divide # 2
  # push 5 # 2, 5
  # divide # 2
  # push 4 # 2, 4
  # subtract # 2
  # push 10 # 2, 10
  # multiply # 20
  # multiply # error
end
