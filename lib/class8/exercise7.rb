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
    self.each do |x|
      yield x
    end
  end
end

%w(OMG YOLO ROTFL yolo FTW).each_without_yolo do |e|
  if e.downcase == 'yolo'
    e = 'Life is too short'
    puts e
  else
    puts e
  end
end


