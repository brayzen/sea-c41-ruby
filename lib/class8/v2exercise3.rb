#!/usr/bin/env ruby
#
# 5 points
#
# Extend the previous program so the block also accepts a parameter and displays
# it's value after executing the block.
#
# For example:
#
#   $ ruby exercise3.rb
#   Executing the method
#   method_param is dinner
#   Executing the block
#   block_param is lunch
#
# TIP: Don't over think this one. The simpler the better.

def follow_the_execution(method_param)
  puts 'Executing the method'
  yield(method_param, 'lunch')
end

follow_the_execution('dinner') do |block_param1, block_param2|
  puts "method_param is #{block_param1}"
  puts 'Executing the block'
  puts "block_param is #{block_param2}"
end
