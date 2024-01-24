require_relative 'game'
require_relative 'creature'

game = Game.new

fire_dragon = FantasyCreatureGenerator.new
fire_dragon.setup("Dragon", "Fire", 10, 10)

water_nymph = FantasyCreatureGenerator.new
water_nymph.setup("Nymph", "Water", 5, 5)

invisible_spirit = FantasyCreatureGenerator.new
invisible_spirit.setup("Spirit", "Air", 3, 3)

golem = FantasyCreatureGenerator.new
golem.setup("Golem", "Earth", 8, 8)

brian = FantasyCreatureGenerator.new
brian.setup("Brian", "Friendship", Float::INFINITY, Float::INFINITY)

[fire_dragon, water_nymph, invisible_spirit, golem, brian].each do |creature|
  game.add_creature(creature)
end

game.start_game
