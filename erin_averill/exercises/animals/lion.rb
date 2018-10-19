require_relative 'mammal'

class Lion < Mammal
	def initialize health = 170
		super
	end
	def display_health
		puts "This is a lion and it is at #{@health} health points"
		# puts @health
		super
	end
	def fly
		@health -= 10
		self
	end
	def attack_town
		@health -= 50
		self
	end
	def eat_human
		@health += 20
		self
	end
end

lionel = Lion.new.attack_town.attack_town.attack_town.eat_human.eat_human.fly.fly.display_health