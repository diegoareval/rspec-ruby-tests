require_relative "strings"

test_word = "Ruby"
sentence = "There is a gemstone called ruby in existence"
text = BasicString.new(sentence)

puts text.contains_word? test_word
puts text.contains_word_ignorecase? test_word