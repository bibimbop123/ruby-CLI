require 'minitest/autorun'
require './creature'

class TestCreature < Minitest::Test

  def test_initialize
    @creature_type = FantasyCreatureGenerator.new
    @element = FantasyCreatureGenerator.new
    @special_ability = FantasyCreatureGenerator.new
    @food = FantasyCreatureGenerator.new
  end

  def test_generate_special_ability
    special_ability =FantasyCreatureGenerator.new
    assert_equal case @element
  when "Fire"
    "Breathes scorching flames"
  when "Water"
    "Can communicate with aquatic life"
  when "Air"
    "Invisible and can fly"
  when "Earth"
    "Can manipulate the earth"
  when "Friendship"
    puts "What is Brian's special ability?"
    gets.chomp.to_s
  else
    puts "What is this creature's special ability?"
    gets.chomp.to_s
  end
end

def test_generate_food
  food = FantasyCreatureGenerator.new
  assert_equal  case @element
when "Fire"
  "flesh and bones"
when "Water"
  "Fishies and seaweed"
when "Air"
  "Fruit and insects"
when "Earth"
  "Roots and Trees"
when "Friendship"
  puts "What is Brian's favorite food?"
  @food = gets.chomp.to_s
else
  puts "What does this creature eat?"
  gets.chomp.to_s
end
end

  def test_describe_creature
    creature = FantasyCreatureGenerator.new
    assert_equal "#{creature.creature_type} with an affinity for #{creature.element} loves #{creature.food}. Special ability: #{creature.special_ability}", creature.describe_creature('cactus', 'earth')
  end
end
