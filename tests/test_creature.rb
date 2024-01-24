require 'minitest/autorun'
require './creature'

class TestCreature < Minitest::Test

  def test_creature_setup
    creature = FantasyCreatureGenerator.new("Dragon", 10, 10)
    assert_equal "Dragon", creature.creature_type
    assert_equal 10, creature.power
    assert_equal 10, creature.toughness
  end

  def test_initialize(creature_type, element)
    @creature_type = creature_type
    @element = element
    @special_ability = test_generate_special_ability(creature_type, element)
    @food = test_generate_food(creature_type, element)
  end

  def test_describe_creature(creature_type, element)
    assert_equal "#{creature.creature_type} with an affinity for #{creature.element} loves #{creature.food}. Special ability: #{creature.special_ability}", creature.describe_creature('cactus', 'earth')
  end
end
