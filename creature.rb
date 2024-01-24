class FantasyCreatureGenerator
  attr_accessor :creature_type, :element, :special_ability, :food, :power, :toughness
 

  def setup(creature_type, element, power, toughness)
    @creature_type = creature_type
    @element = element
    @special_ability = generate_special_ability
    @food = generate_food
    @power = power
    @toughness = toughness
  end

  def generate_special_ability
    case @element
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

  def generate_food
    case @element
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
  def describe_creature
    "#{@creature_type} with an affinity for #{@element} loves #{@food}. Special ability: #{@special_ability}. this creature has #{@power} power and #{@toughness} toughness."
  end
end
