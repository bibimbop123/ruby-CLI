require_relative 'creature'

fire_dragon = FantasyCreatureGenerator.new("Dragon", "Fire")
water_nymph = FantasyCreatureGenerator.new("Nymph", "Water")
invisible_spirit = FantasyCreatureGenerator.new("Spirit", "Air")
golem = FantasyCreatureGenerator.new("Golem", "Earth")
mystery_creature = FantasyCreatureGenerator.new("Mystery Beast", "hiddenpower")
brian = FantasyCreatureGenerator.new("Brian", "Focusing")

fire_dragon.describe_creature
water_nymph.describe_creature
invisible_spirit.describe_creature
golem.describe_creature
mystery_creature.describe_creature
brian.describe_creature
