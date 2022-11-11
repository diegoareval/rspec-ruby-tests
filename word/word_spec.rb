require_relative "word"

RSpec.describe Word do
    describe "text word is a palindrome" do
        it "should read the same forwards as backwards" do
            text_word = "Madam"
            result = Word.palindrome? text_word
            expect(result).to be_truthy
        end
    end

    describe "text word is NOT a palindrome" do
        it "should not read the same forwards as backwards" do
            text_word = "Food"
            result = Word.palindrome? text_word
            expect(result).to be_falsey
        end
    end
end