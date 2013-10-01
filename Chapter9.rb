# Improved ask method. That ask method I showed you was OK, 
# but I bet you could do better. Try to clean it up by removing 
# the answer variable. You’ll have to use return to exit from 
# the loop. (Well, it will get you out of the whole method, but 
# it will get you out of the loop in the process.) How do you 
# like the resulting method? I usually try to avoid using return 
# (a personal preference), but I might make an exception here.

def ask(question)
  while true
    puts question
    reply = gets.chomp.downcase

    if reply == "yes"
      return true
    elsif reply == "no"
      return false
    else
      puts "Please answer 'yes' or 'no'"
    end
  end
end

puts 'Hello, and thank you for...'
puts
ask 'Do you like eating tacos?' # Ignore this return value ask 'Do you like eating burritos?' # And this one
wets_bed = ask 'Do you wet the bed?' # Save this return value ask 'Do you like eating chimichangas?'
ask 'Do you like eating sopapillas?'
puts 'Just a few more questions...'
ask 'Do you like drinking horchata?'
ask 'Do you like eating flautas?'
puts
puts 'DEBRIEFING:'
puts 'Thank you for...'
puts
puts wets_bed

# Roman numbers

def old_school_roman(num)
  os_roman = ""

  os_roman = os_roman + "M" * (num / 1000)  
  os_roman = os_roman + "D" * ((num % 1000) / 500)
  os_roman = os_roman + "C" * ((num % 500) / 100)
  os_roman = os_roman + "L" * ((num % 100) / 50)
  os_roman = os_roman + "X" * ((num % 50) / 10)
  os_roman = os_roman + "V" * ((num % 10) / 5)
  os_roman = os_roman + "I" * ((num % 5) / 1)
end

puts old_school_roman(rand(2999)+1)


# Modern Roman numbers

def modern_roman(num)
  roman = ""

  thousand = (num / 1000)
  hundred = ((num % 1000) / 100)
  ten = ((num % 100) / 10)
  one = ((num % 10) / 1)

  roman = "M" * thousand

  if hundred == 9
    roman = roman + "CM"
  elsif hundred == 4
    roman = roman + "CD"
  else
    roman = roman + "D" * ((num % 1000) / 500)
    roman = roman + "C" * ((num % 500) / 100)
  end

  if ten == 9
    roman = roman + "XC"
  elsif ten == 4
    roman = roman + "XL"
  else
    roman = roman + "L" * ((num % 100) / 50)
    roman = roman + "X" * ((num % 50) / 10)
  end

  if one == 9
    roman = roman + "IX"
  elsif one == 4
    roman = roman + "IV"
  else
    roman = roman + "V" * ((num % 10) / 5)
    roman = roman + "I" * ((num % 5) / 1)
  end
end

puts modern_roman(rand(2999)+1)


        
    