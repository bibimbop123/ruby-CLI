require 'minitest/autorun'
require './creature'

class TestCreature < Minitest::Test
  def setup
    @creature = FantasyCreatureGenerator.new
    @creature.setup("Dragon","Fire", 10, 10)
    @special_ability = @creature.generate_special_ability
    @food = @creature.generate_food
  end

  def test_creature_setup
    assert_equal "Dragon", @creature.creature_type
    assert_equal "Fire", @creature.element
    assert_equal 10, @creature.power
    assert_equal 10, @creature.toughness
    assert_equal "Breathes scorching flames", @creature.special_ability
    assert_equal "flesh and bones", @creature.food
  end

  def test_generate_special_ability
    assert_equal "Breathes scorching flames", @creature.generate_special_ability
  end

  def test_generate_food
    assert_equal "flesh and bones", @creature.generate_food
  end

  def test_describe_creature
    expected_description = "#{@creature.creature_type} with an affinity for #{@creature.element} loves #{@creature.food}. Special ability: #{@creature.special_ability}. this creature has #{@creature.power} power and #{@creature.toughness} toughness."
    assert_equal expected_description, @creature.describe_creature
  end
end
