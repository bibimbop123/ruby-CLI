require 'minitest/autorun'
require './creature'

class TestCreature < Minitest::Test

  def test_initialize(creature_type, element)
    @creature_type = creature_type
    @element = element
    @special_ability = test_generate_special_ability(creature_type, element)
    @food = test_generate_food(creature_type, element)
  end

  def test_generate_special_ability(creature_type, element)
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
   @special_ability = gets.chomp.to_s
  else
    puts "What is this creature's special ability?"
   @special_ability = gets.chomp.to_s
  end
end

def test_generate_food(creature_type, element)
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
  @food = gets.chomp.to_s
end
end

  def test_describe_creature(creature_type, element)
    assert_equal "#{creature.creature_type} with an affinity for #{creature.element} loves #{creature.food}. Special ability: #{creature.special_ability}", creature.describe_creature('cactus', 'earth')
  end
end
