require_relative 'game'
require_relative 'creature'

game = Game.new

fire_dragon = FantasyCreatureGenerator.new
fire_dragon.setup("Dragon", "Fire", 10, 10)
game.add_creature(fire_dragon)

water_nymph = FantasyCreatureGenerator.new
water_nymph.setup("Nymph", "Water", 5, 5)
game.add_creature(water_nymph)

invisible_spirit = FantasyCreatureGenerator.new
invisible_spirit.setup("Spirit", "Air", 3, 3)
game.add_creature(invisible_spirit)

golem = FantasyCreatureGenerator.new
golem.setup("Golem", "Earth", 8, 8)
game.add_creature(golem)

brian = FantasyCreatureGenerator.new
brian.setup("Brian", "Friendship", Float::INFINITY, Float::INFINITY)
game.add_creature(brian)


game.start_game

game.describe_creatures
