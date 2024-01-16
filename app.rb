require_relative 'creature'

fire_dragon = FantasyCreatureGenerator.new("Dragon", "Fire")
water_nymph = FantasyCreatureGenerator.new("Nymph", "Water")
invisible_spirit = FantasyCreatureGenerator.new("Spirit", "Air")
golem = FantasyCreatureGenerator.new("Golem", "Earth")
brian = FantasyCreatureGenerator.new("Brian", "Focusing")
print "Input a creature type: "
creature_type = gets.chomp.to_s
print "Input an creature's element: "
element = gets.chomp.to_s.downcase.capitalize
user_creature = FantasyCreatureGenerator.new(creature_type, element)


fire_dragon.describe_creature
water_nymph.describe_creature
invisible_spirit.describe_creature
golem.describe_creature
brian.describe_creature
user_creature.describe_creature
