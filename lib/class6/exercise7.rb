#!/usr/bin/env ruby
#
# 5 points
#
# Replace the `database` and `load` methods with your solutions from exercise 6.
#
# Write a program that, when given a key, updates the database by removing the
# key-value pair:
#
#   $ ruby exercise7.rb age
#   Removed 1 key-value pair in /Users/tim/sea-c21-ruby/lib/class6/database.yml
#   :age => 40
#
# And if no matching key exists, it needs to display an error message:
#
#   $ ruby exercise7.rb pet
#   Could't find key :pet from /Users/tim/sea-c21-ruby/lib/class6/database.yml
#
# TIP #1: How do you delete a key-value pair from a Hashes?
#
# TIP #2: Make sure the `remove` method returns the deleted value.

require 'yaml'

def database
  File.absolute_path("#{File.dirname(__FILE__)}/database.yml")
end

def load
  File.open(database, 'r') do |f|
    person = f.map do |i|
      YAML.load(i)
    end
    person.delete(nil)
    person = person.reduce({}) do |memo, x|
      memo.merge(x)
    end
    return person
  end
end

def remove(key)
  load.each_key do |x|
    return load.delete(x) if x == key.to_sym
  end
  false
end

input = ARGV[0]

abort 'Usage: exercise7.rb KEY' unless input

result = remove(input)

if result
  puts "Removed 1 key-value pair in #{database}"
  puts ":#{input} => #{result.inspect}"
else
  puts "Could't find key :#{input} from #{database}"
end
