require 'minitest/autorun'
require './creature'

class TestCreature < Minitest::Test
  def test_describe_creature
    creature = FantasyCreatureGenerator.new
    assert_equal "#{creature.creature_type} with an affinity for #{creature.element} loves #{creature.food}. Special ability: #{creature.special_ability}", creature.describe_creature('cactus', 'earth')
  end
end
