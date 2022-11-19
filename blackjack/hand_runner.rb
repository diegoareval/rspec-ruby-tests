require_relative "card"
require_relative "hand"

@hand = Hand.new()

card1 = Card.new("Diamonds", "Jack")
card2 = Card.new("Clubs", "Ace")
@hand.add_card card1
@hand.add_card card2

puts "el tamaño es de: #{@hand.dealt_cards.size}"
puts "the card1 es: #{@hand.dealt_cards.first.suit} of #{@hand.dealt_cards.first.rank}"
puts "the card1 es: #{@hand.dealt_cards.last.suit} of #{@hand.dealt_cards.last.rank}"
puts "el valor es de: #{@hand.get_value}"
puts @hand
card1.show = false
puts 
puts @hand