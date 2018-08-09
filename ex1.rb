def select_cards(possible_cards, hand)
  counter = 0 # => keeping track number of times a "card" was put into the pile
  until counter == 3 # => keep running until 3 cards are in the pile
    possible_cards.each do |current_card|
      if counter < 3 # => making sure there's no more than 3
        print "Do you want to pick up #{current_card}?"
        answer = gets.chomp
        if answer.downcase == 'y'
          hand << current_card
          counter += 1 # => +1 to counter when a card was chosen
        end
      end
    end
  end

  return hand
end

available_cards = ['queen of spades', '2 of clubs', '3 of diamonds', 'jack of spades', 'queen of hearts']

new_hand = select_cards(available_cards, [])

display_hand = new_hand.join("\n")

puts "Your new hand is: \n#{display_hand}"