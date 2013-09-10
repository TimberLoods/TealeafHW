

# calculate hand cards value
def calculate_value(hand)
	cards_arr = hand.map {|e| e[1]}

	total = 0
	cards_arr.each do |card|
		if card == "A"
			total += 11
		elsif card.to_i == 0
			total += 10
		else total += card.to_i
		end
	end

	cards_arr.select{|e| e == "A"}.count.times do 
		total -= 10 if total > 21
	end

	total
end


# player
# dealer
# cards


suits = %w(D S H C)
cards = %w(2 3 4 5 6 7 8 9 10 J Q K A)

deck = suits.product(cards)
deck.shuffle!

player_hand = []
dealer_hand = []

player_hand << deck.pop
dealer_hand << deck.pop
player_hand << deck.pop
dealer_hand << deck.pop

dealers_show_card = dealer_hand[1]

player_total = calculate_value(player_hand)
dealer_total = calculate_value(player_hand)




puts "Welcome to Casino!"
puts "Let's play Blackjack!"
puts ""
puts "The dealers cards are #{dealers_show_card}."

if player_total == 21
	puts "You so Lucky! U winnnnnnn!!"
	exit
end

while player_total < 21
	puts "Your card is #{player_hand} and total_value is #{player_total}"
	puts "How about 1)hit or 2)stay?"

player_action = gets.chomp
if player_action == "1"
	player_hand << deck.pop
elsif player_action == "2"
	if dealer_total < 17
		dealer_hand << deck.pop
	end
	break
end
	
end
