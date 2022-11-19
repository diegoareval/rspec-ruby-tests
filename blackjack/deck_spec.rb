require_relative "deck"

RSpec.describe Deck do
    SUITS = ["Spades", "Hearts", "Clubs", "Diamonds"]
    RANKS = ['2', '3', '4', '5', '6', '7', '8', '8', '9', '10', 'Jack', 'Queen', 'King', 'Ace']

    before do
        @deck = Deck.new(SUITS, RANKS)
    end

    it "respond to deck" do
        expect(@deck).to respond_to(:deck)
    end

    it "respond to suits" do
        expect(@deck).to respond_to(:suits)
    end

    it "respond to ranks" do
        expect(@deck).to respond_to(:ranks)
    end

    it "respond to shuffle" do
        expect(@deck).to respond_to(:shuffle)
    end

    it "respond to deal_card" do
        expect(@deck).to respond_to(:deal_card)
    end

    it "respond to replace_with" do
        expect(@deck).to respond_to(:replace_with)
    end

    it "pops off the stack when a card is dealt" do
        # shuffle the deck
        # dealt card will be last card that needs to be popped off
        # expect deal_card to equal dealt card
        dealt_card = @deck.shuffle.last
        expect(@deck.deal_card).to eq(dealt_card)
    end

    it "dealt card cannot be nil" do
        expect(@deck.deal_card).not_to eq(nil)
    end

    it "gets a new deck with replace_with" do
        decks_of_cards = []
        decks_of_cards.push(Card.new('Clubs', '2'))
        decks_of_cards.push(Card.new('Clubs', '3'))
        new_deck = @deck.dup
        new_deck.replace_with(decks_of_cards)
        expect(@deck.deck).not_to eq(new_deck.deck)
        
    end
end