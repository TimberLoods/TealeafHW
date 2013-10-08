require 'pry'
# Sort

def sort(arr) # This "wraps" recursive_sort. recursive_sort some_array, []
  recursive_sort(arr, [])

end

def recursive_sort unsorted_array, sorted_array # Your fabulous code goes here.
  if unsorted_array.length <= 0
    return sorted_array
  end

  last_one = unsorted_array.pop
  still_unsort = []
  unsorted_array.each do |unsort_project|
   if unsort_project > last_one
    still_unsort.push(unsort_project)
  else
    still_unsort.push(last_one)
    last_one = unsort_project
  end
  
end
  sorted_array.push(last_one)
  recursive_sort(still_unsort, sorted_array)
end


# puts "Your can enter the words you want to sort below:"
# puts "P.S seprate each word by 'Enter'"
# arr = []
# word = gets.chomp
# while true
#   word = gets.chomp
#   arr.push(word)
#   if word.empty?
#     break
#   end 
# end
# puts "Here is your sorted array below:"
# puts sort(arr)

arr = %w(adfe etrqet c ad dae fcdg)
puts "Here is sorted array below:"
puts sort(arr)
# Shuffle

def shuffle(arr)
  recursive_suffle(arr, [])
end
def recursive_suffle(unsuffled_arr, suffled_arr)
  if unsuffled_arr.length <= 0
    return suffled_arr
  end

  n = unsuffled_arr.length
  rand_word = unsuffled_arr.slice!(rand(n))
  suffled_arr.push(rand_word)
  recursive_suffle(unsuffled_arr, suffled_arr)
end

puts "And here is shuffled array below:"
arr2 = %w(adfe etrqet c ad dae fcdg)
puts shuffle(arr2)

# Dictionary sort
# paste sort method and change some stuff
def dict_sort(arr) # This "wraps" recursive_sort. recursive_sort some_array, []
  recursive_dict_sort(arr, [])

end

def recursive_dict_sort unsorted_array, sorted_array # Your fabulous code goes here.
  if unsorted_array.length <= 0
    return sorted_array
  end

  last_one = unsorted_array.pop
  still_unsort = []
  unsorted_array.each do |unsort_project|
   if unsort_project.downcase > last_one.downcase
    still_unsort.push(unsort_project)
  else
    still_unsort.push(last_one)
    last_one = unsort_project
  end
  
end
  sorted_array.push(last_one)
  recursive_dict_sort(still_unsort, sorted_array)
end

puts "Here is your Dictionary sort below:"
arr_dict = %w(cat dog shirt APEC software hacker C++)
puts dict_sort(arr_dict)


# Expend English number
# paste orign method and change some stuff.
def english_number number
  if number < 0 # No negative numbers.
    return 'Please enter a number that isn\'t negative.' 
  end
  if number == 0 
    return 'zero'
  end
# No more special cases! No more returns!
  num_string = '' # This is the string we will return.
  ones_place = ['one',       'two',      'three',
                'four',      'five',     'six',
                'seven',     'eight',    'nine']
  tens_place = ['ten',       'twenty',   'thirty',
                'forty',     'fifty',    'sixty',
                'seventy',   'eighty',   'ninety']
  teenagers  = ['eleven',    'twelve',   'thirteen',
                'fourteen',  'fifteen',  'sixteen',
                'seventeen', 'eighteen', 'nineteen'] 
                # "left" is how much of the number
  #         we still have left to write out.
  #  "write" is the part we are
  #          writing out right now.
  #  write and left...get it?  :)
  left = number
  write = left / 1000 # How many hundreds left?
  left = left - write * 1000 # Subtract off those hundreds.
  if write > 0
  # Now here's the recursion:
    thusands = english_number write
    num_string = num_string + thusands + ' thusand' 
    if left > 0
      #  So we don't write 'two hundredfifty-one'...
      num_string = num_string + ' '
    end 
  end
  write = left / 100 # How many hundreds left?
  if write > 0
    number_string = (left % 100)
      #  Since we can't write "tenty-two" instead of
      #  "twelve", we have to make a special exception
      #  for these.