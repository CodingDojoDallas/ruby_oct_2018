require_relative 'Human'
require_relative 'Wizard'
require_relative 'Ninja'
require_relative 'Samurai'

player = Wizard.new
player2 = Ninja.new
player3 = Samurai.new
player2.health_check
player3.death_blow(player2)
player2.health_check
player2.attack(player)
player3.health_check