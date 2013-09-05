puts "Enter your first number"
num1 = gets.chomp

puts "Your first number is #{num1},right?"

puts "Enter your second number"
num2 = gets.chomp

puts "Your first number is #{num1}, and your second number is #{num2}"
puts "What's the operation your need to do with this 2 numbers?"
puts "1) + 2) - 3) * 4) / "
operation = gets.chomp

if operation == "1"
	result = num1.to_f + num2.to_f
	operation = "+"
elsif operation == "2"
	result = num1.to_f - num2.to_f
	operation = "-"
elsif operation == "3"
	result = num1.to_f * num2.to_f
	operation = "*"
elsif operation == "4"
	result = num1.to_f / num2.to_f
	operation = "/"
else
	puts "There's something wrong!"
end

puts "Your just do a great job!"
puts "Here is your result: #{num1} #{operation} #{num2} = #{result}"		
