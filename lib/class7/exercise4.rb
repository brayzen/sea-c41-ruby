#!/usr/bin/env ruby
#
# 5 points
#
# Copy the previous OrangeTree class and replace the following method:
#
#   OrangeTree#initialize(fruit = 50)
#
#     Sets it's `@fruit` instance variable to the `fruit` parameter, which
#     defaults to 50.
#
#     orange_tree = OrangeTree.new
#     orange_tree.fruit  #=> 50
#
#     orange_tree = OrangeTree.new(20)
#     orange_tree.fruit  #=> 20
#
# And extend the OrangeTree class with the following method:
#
#   OrangeTree#==(other) #=> true or false
#
#     Given another object, returns `true` if both objects have the same amount
#     of `fruit`. Otherwise, returns `false`.
#
#     OrangeTree.new(20) == OrangeTree.new(20)
#     OrangeTree.new(20) != OrangeTree.new(10)

# rubocop:disable TrivialAccessors
class OrangeTree
  attr_accessor :fruit

  def initialize(fruit = 50)
    @fruit = fruit
  end

  def fruit
    @fruit
  end

  def pick!(amount = 1)
    return nil if amount > @fruit
    @fruit -= amount
  end

  def ==(other)
    false unless other.is_a?(Object)
    return true if @fruit == other.fruit
  end
end

tree1 = OrangeTree.new.pick!(25)
tree2 = OrangeTree.new.pick!(25)
tree3 = OrangeTree.new.fruit

puts tree1
puts tree2
puts tree3

puts tree1.==(tree2)
puts tree1.==(tree3)
puts tree2.==(tree3)
