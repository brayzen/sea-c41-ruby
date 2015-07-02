# 5 points
#
# Write a program that displays the lyrics to the beloved nursery rhyme
# "3 Bottles of Beer on the Wall".
#
# Here's how the program must work:
#
#   $ ruby exercise1.rb
#   3 bottles of beer on the wall, 3 bottles of beer!
#   Take one down, pass it around, 2 bottles of beer on the wall!
#   2 bottles of beer on the wall, 2 bottles of beer!
#   Take one down, pass it around, 1 bottle of beer on the wall!
#   1 bottle of beer on the wall, 1 bottle of beer!
#   Take one down, pass it around, no more bottles of beer on the wall!
#   No more bottles of beer on the wall, no more bottles of beer!
#   Go to the store and buy some more, 3 bottles of beer on the wall!
#
# TIP: I expect you to use a loop.

number = 4
num = number

num.times do
  num -= 1
  if num == 1
    puts "#{num} bottle of beer on the wall, #{num} bottle of beer!"
    puts 'Take one down, pass it around, no more bottles of beer on the wall!'
  elsif num == 0
    puts 'No more bottles of beer on the wall, no more bottles of beer!'
    puts 'Go to the store and buy some more, 3 bottles of beer on the wall!'
  else
    puts "#{num} bottles of beer on the wall, #{num} bottles of beer!"
    if num - 1 == 1
      message = "Take one down, pass it around, #{num - 1}"
      message += ' bottle of beer on the wall!'
      puts message
    else
      message2 = "Take one down, pass it around, #{num - 1}"
      message2 += ' bottles of beer on the wall!'
      puts message2
    end
  end
end
