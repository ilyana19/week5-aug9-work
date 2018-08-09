def select_cards(possible_cards, hand)
  counter = 0
  until counter == 3
    possible_cards.each do |current_card|
      if counter < 3
        print "Do you want to pick up #{current_card}?"
        answer = gets.chomp
        if answer.downcase == 'y'
          hand << current_card
          counter += 1
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