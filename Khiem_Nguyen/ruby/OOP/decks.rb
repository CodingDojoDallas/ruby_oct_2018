

class Card
    attr_accessor :suit, :value
    def initialize(suit,value)
        @suit = suit
        @value = value

    end
end


class Deck
    attr_accessor :cards
    def initialize

        suits = ["S", "H", "C", "D"]
        values = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K"]
        @cards = []
        for i in suits
            for j in values
                @cards.push(Card.new(i,j))
            end
        end
    end
    def show

        for i in @cards
        puts i.suit.to_s + i.value.to_s
        end
        self

    end


    def shuffle
        @cards.shuffle!
        for i in @cards
        puts i.suit.to_s + i.value.to_s
        end
        self

    end

    def reset
        initialize
        for i in @cards
        puts i.suit.to_s + i.value.to_s
        end
        self

    end

    
end






deck1 = Deck.new
deck1.shuffle.reset
