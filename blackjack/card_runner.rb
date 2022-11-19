require_relative "card"

suit = "Clubs"
rank = '9'
card = Card.new(suit, rank)

puts "suite of card: #{card.suit}"
puts "rank of card: #{card.rank}"
puts "Card: #{card}"

card.show = false
puts "Card: #{card}"