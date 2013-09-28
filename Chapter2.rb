# Hours in a year. How many hours are in a year?
A_year_hours = 365 * 24 

puts "There is #{A_year_hours} hours in a year."

# Minutes in a decade. How many minutes are in a decade?

A_decade_mins = A_year_hours * 10 * 60

puts "There is #{A_decade_mins} minutes in a decade."

# Your age in seconds. How many seconds old are you? (I’m not going to check your answer, so be as accurate—or not—as you want.)

# I was borned in 1983/8/5, so in this case i have 3 decades and 53 days old

my_age_in_mins = A_decade_mins * 3 + 53 * 24
my_age_in_seconds = my_age_in_mins * 60

puts "I am #{my_age_in_seconds} seconds old now."

# Here’s a tougher question:
# Our dear author’s age. If I am 1,160 million seconds old 
# (which I am, though I was somewhere in the 800 millions when I started this book), how old am I?

author_age_in_seconds = 1160 * 10**6

author_age = author_age_in_seconds / (A_year_hours * 60 * 60)

puts "Our author's ager is #{author_age} years old."

