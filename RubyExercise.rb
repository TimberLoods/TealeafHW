#Note: we're looking for Ruby commands for the below questions, not the actual answers, unless it's a question. 

#Hint: you can type "irb" in your terminal to get a Ruby console to test things out. For multi-line code, use an editor that can run Ruby code, or copy/paste into irb.

#Hint 2: you can refer to the Ruby doc for Array and Hash here: 

#http://www.ruby-doc.org/core-1.9.3/Array.html
#http://www.ruby-doc.org/core-1.9.3/Hash.html


#1. Use the "each" method of Array to iterate over [1, 2, 3, 4, 5, 6, 7, 8, 9, 10], and print out each value.

array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
array.each { |x| puts x}

#2. Same as above, but only print out values greater than 5.

array.each {|x| puts x if x > 5}

#3. Now, using the same array from #2, use the "select" method to extract all odd numbers into a new array.

array.select {|x| (x % 2) != 0}

#4. Append "11" to the end of the array. Prepend "0" to the beginning.

array.push("11")
array.unshift(0)

#5. Get rid of "11". And append a "3".

array.delete(11)
array.push(3)
#6. Get rid of duplicates without specifically removing any one value. 

array.uniq!
#7. What's the major difference between an Array and a Hash?

puts "Hash'sindexing is done via arbitrary keys of any object type, not an integer index." 


#8. Create a Hash using both Ruby 1.8 and 1.9 syntax.
#Suppose you have a h = {a:1, b:2, c:3, d:4}

h = {":a" => 1, ":b" => 2, ":c" => 3, ":d" => 4}
h = {a: 1, b: 2, c: 3, d: 4}

#9. Get the value of key "b".
h[":b"]

#10. Add to this hash the key:value pair {e:5}

h[":e"] = 5
#13. Remove all key:value pairs whose value is less than 3.5

h.delete_if{|key, value| value < 3.5}

#14. Can hash values be arrays? Can you have an array of hashes? (give examples)
h2 = { "a" => [1, 2, 3], "b" => 456, "c" => 789}
a3 = [ {a:1, b:2, c:3}, 4, 5, 6]

#15. Look at several Rails/Ruby online API sources and say which one your like best and why.

puts "My Opinion will be 'http://www.tutorialspoint.com/ruby/ruby_classes.htm' , cause it's good examples."
