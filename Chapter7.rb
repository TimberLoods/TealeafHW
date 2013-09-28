# 99 Bottle of Beer on the Wall

i = 99
while i >= 1
  if i == 1
    puts "#{i.to_s} bottle of beer on the wall, #{i.to_s} bottle of beer."
    puts "Take one down and pass it around, no more bottles of beer on the wall."
    puts ""
  elsif i == 0
    puts "No more bottles of beer on the wall, no more bottles of beer."
    puts "Go to the store and buy some more, 99 bottles of beer on the wall."    
    break
  else
    puts "#{i.to_s} bottles of beer on the wall, #{i.to_s} bottles of beer."
    puts "Take one down and pass it around, #{(i - 1).to_s} bottles of beer on the wall."
    puts "" 
  end
  i -= 1
end

# Deaf grandma

i = 0

while i < 3
	puts "Let's talk to your deaf grandma."
	words = gets.chomp
	if words == "BYE" && i == 2
		i += 1
		puts "BYE!"
	elsif words == "BYE"
		i += 1
		puts "Huh?!"

	elsif words == words.upcase
		i = 0
		puts "Grandma shout: NO, NOT SINCE 1938!"
	else
		i = 0
		puts "HUH?! SPEAK UP! SONNY!"
	end


end

# Leap years
puts "Give me a starting year."
start_year = gets.chomp.to_i
puts "Give me an ending year."
end_year = gets.chomp.to_i

puts ""

i = start_year
while i <= end_year
  if i % 4 == 0 
    if i % 100 != 0 || i % 400 == 0
      puts i.to_s
    end
  end 
  i += 1
end

