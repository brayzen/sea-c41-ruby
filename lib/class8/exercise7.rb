#!/usr/bin/env ruby
#
# 5 points
#
# Write the following method:
#
#   Array#each_without_yolo(&block)
#
#     Iterates through an Array object, calling the `block` with each element.
#     However, of the element is some form of 'YOLO', it calls the block with
#     'Life is too short'.
#
#     %w(OMG YOLO ROTFL yolo FTW).each_without_yolo { |e| puts e }
#
#     Output:
#
#     OMG
#     Life is too short
#     ROTFL
#     Life is too short
#     FTW

class Array
  def each_without_yolo(&block)
    self.call
  end
end

%w(OMG YOLO ROTFL yolo FTW).each_without_yolo do |e|
  puts "#{e}:  yet to be run through condition"
  if e.downcase == 'yolo'
    puts 'Life is too short'
  else
    e
  end
end

p new_array

