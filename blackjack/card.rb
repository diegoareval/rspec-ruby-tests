require_relative "card"

class Card
    attr_accessor :suit, :rank, :show
    SUITES = ["Spades", "Hearts", "Clubs", "Diamonds"]
    RANKS = ['2', '3', '4', '5', '6', '7', '8', '8', '9', '10', 'Jack', 'Queen', 'King', 'Ace']

    def initialize(suit, rank)
        @show = true
        if SUITES.include?(suit) && RANKS.include?(rank)
            @suit = suit
            @rank = rank
        else
            @suit = "UNKNOWN"
            @rank = "UNKNOWN"
        end
    end

    def to_s
        if @show
            "#{@rank} of #{@suit}"
        else
            ""
        end
    end
end