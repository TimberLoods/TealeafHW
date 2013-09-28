# Angry Boss program

puts 'Angry Boss say: Hey, you. What\'s you want? '
say_something = gets.chomp
puts "Angry Boss going crazy and shout to you: You mean #{say_something}, huh?"
puts "You'r Fire!!!!"

# Table of contents

title_width = 50
puts ("Table of Contents".center(title_width))
puts ""
contents_width = 25
puts ("Chapter 1:  Getting Started".ljust(contents_width)) + ("page  1".rjust(contents_width))
puts ("Chapter 2:  Numbers        ".ljust(contents_width)) + ("page  9".rjust(contents_width))
puts ("Chapter 3:  Letters        ".ljust(contents_width)) + ("page 13".rjust(contents_width))

