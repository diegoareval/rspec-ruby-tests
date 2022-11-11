require_relative "word"

test_word = "Madam"
result = Word.palindrome?(test_word) ? "Is": "Not"

puts "The word #{test_word} #{result} a Palindrome"