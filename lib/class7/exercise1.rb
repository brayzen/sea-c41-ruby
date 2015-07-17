#!/usr/bin/env ruby
#
# 5 points
#
# The following five methods must be fixed:
#
#   Integer#hours_in_seconds #=> Integer
#
#     Returns the number of hours converted to seconds.
#
#     10.hours_in_seconds  #=> 36_000
#
#   String#indent(amount = 2) #=> String
#
#     Returns `amount` spaces plus the String. The default `amount` is 2.
#
#     'foo'.indent     #=> '  foo'
#     'foo'.indent(3)  #=> '   foo'
#
#   Integer#to_roman => String
#
#     Returns the roman numeral equavilent of the arabic number.
#
#     1999.to_roman  #=> 'MCMXCIX'
#
#   Array#second #=> Object
#
#     Returns the second element of the Array.
#
#     [10, 20, 30].second  #=> 20
#
#   Array#third #=> Object
#
#     Returns the third element of the Array.
#
#     [10, 20, 30].third  #=> 30
#
# HINT: Remember to use `self` to access the receiver object of the method
#
#     class Integer
#       def plus_forty_two
#         self + 42
#       end
#     end
#
#     1.plus_forty_two  #=> 43

class Integer
  def hours_in_seconds
    self * 60 * 60
  end
end

class String
  def indent(amount = 2)
    string = self
    @amount = amount
    @length = string.length
    string.rjust(length + amount)
  end
end

# puts'----------'
# puts 'foo'.indent(3)

class Integer
  # rubocop:disable MethodLength
  def to_roman
    num = self
    roman_numerals = {
      'M' => 1000,
      'CM' => 900,
      'D' => 500,
      'CD' => 400,
      'C' => 100,
      'XC' => 90,
      'L' => 50,
      'XL' => 40,
      'X' => 10,
      'IX' => 9,
      'V' => 5,
      'IV' => 4,
      'I' => 1
    }
    roman_string = ''
    while num != 0
      roman_numerals.keys.each do |k|
        v = roman_numerals[k]
        times = num / v
        roman_string += k * times
        if num % v == 0
          num = 0
          return roman_string
        else
          num = num % v
        end
      end
      return roman_string
    end
  end
end

class Array
  def second
    self[1]
  end

  def third
    self[2]
  end
end
