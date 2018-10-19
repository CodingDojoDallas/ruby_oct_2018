# require_relative 'printer_module'
# class Array
#   include Printer
# end
# class String
#   include Printer
# end
# [1,2,3].print_each_element
# "hello".print_each_element

class Deck 
	def initialize()
		@suit = ['club', 'spade', 'heart', 'diamond']
		@value = ["Ace", "Two", "Three", "Four", "Five", "Six", "Seven", "Eight", "Nine", "Ten", "Jack", "Queen", "King"]
	 	@deck_of_cards = []
	for i in 0...@suit.length
		for j in 0...@value.length 
			card = []
			card.push(@suit[i], @value[j])
			@deck_of_cards.push(card)
		end
		@deck_of_cards.shuffle!
	end
	end
	def display
		puts "deck of cards #{@deck_of_cards}"
	end
	def shuffle
		@deck_of_cards.shuffle!
		puts "Shuffled these cards boiiii #{@deck_of_cards}"
	end
	def deal(num)
		@hand = []
		# puts @deck_of_cards
		for i in 0...num 
			@hand.push(@deck_of_cards[i])
			# puts "Here are your cards #{@deck_of_cards[i]}"
		end
		@deck_of_cards.shift(num)
		# puts "Here is what is left #{@deck_of_cards}"
		return @hand 
	end
	def reset
		initialize
		puts "deck of cards has been reset to #{@deck_of_cards}"
	end
end

class Player < Deck
	def initialize(name, deck)
		@name = name
		@hand = []
		@new_deck = deck
		p @new_deck
		# super()
		# @deck = Deck.new
	end
	def get_deal(num)
		@hand = @new_deck.deal(num)
		puts "Here is the hand #{@hand}"
	end
end
deck = Deck.new
# deck.display
# deck.shuffle
deck.deal(5)
# deck.reset
roger = Player.new("roger", deck)
erin = Player.new("Erin", deck)
roger.get_deal(5)
erin.get_deal(10)


