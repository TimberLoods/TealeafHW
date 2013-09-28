var1 = 2
var2 = '5'
puts var1.to_s + var2
puts var1 + var2.to_i

puts '15'.to_f
puts '99.999'.to_f
puts '99.999'.to_i
puts ''
puts '5 is my favorite number'.to_i
puts 'Who asked you about 5 or whatever?'.to_i
puts 'Your momma did.'.to_f
puts ''
puts 'stringy'.to_s
puts 3.to_i

puts 20
puts 20.to_s
puts '20'


# Full name greeting. Write a program that asks for a person’s first name,
# then middle, and then last. Finally, it should greet the person using their full name.

puts 'Please tell me your first name.'
frist_name = gets.chomp
puts 'Please tell me your middle name.'
middle_name = gets.chomp
puts 'Please tell me your last name.'
last_name = gets.chomp
puts "So, you are #{frist_name.capitalize} #{middle_name.capitalize} #{last_name.capitalize}. Am I right?"

# Bigger, better favorite number. Write a program that asks for a person’s 
# favorite number. Have your program add 1 to the number, and then suggest 
# the result as a bigger and better favorite number. (Do be tactful about it, though.) 

puts 'Would you tell me your favorite number is ?'
num = gets.chomp
puts "Well, I think my number #{num+1}is bigger than yours, "