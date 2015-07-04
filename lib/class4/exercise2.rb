#!/usr/bin/env ruby
#
# 5 points
#
# Write a program that displays the following table of 90's Hip-Hop hits:
#
#   $ ruby exercise2.rb
#   Can I Kick It?      A Tribe Called Quest      1991
#   Rump Shaker         Wreckx-n-Effect           1992
#   Check Yo Self       Ice Cube                  1993
#   Regulate            Warren G & Nate Dogg      1994
#   I Got 5 On It       Luniz                     1995
#   Ready Or Not        The Fugees                1996
#
# TIP #1: Hold all of the information -- song, artist, and year -- in an array.
#
# TIP #2: Use the `string.ljust` method from class 2 exercise 7.
#
# TIP #3: The width of each line is 50 characters.

amalgam =
  [{ song: 'Can I Kick It?', artist: 'A Tribe Called Quest', year: '1991' },
   { song: 'Rump Shaker', artist: 'Wreckx-n-Effect', year: '1992' },
   { song: 'Check Yo Self', artist: 'Ice Cube', year: '1993' },
   { song: 'Regulate', artist: 'Warren G & Nate Dogg', year: '1994' },
   { song: 'I Got 5 On It', artist: 'Luniz', year: '1995' },
   { song: 'Ready Or Not', artist: 'The Fugees', year: '1996' }
  ]

amalgam.each do |i|
  puts i[:song].ljust(20) + i[:artist].ljust(20) + i[:year].rjust(10)
end
