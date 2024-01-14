class FantasyCreatureGenerator
  attr_accessor :creature_type, :element, :special_ability, :food

  def initialize(creature_type, element)
    @creature_type = creature_type
    @element = element
    @special_ability = generate_special_ability
    @food = generate_food
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
    else
      "Mysterious powers"
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
      else
        puts "What does this creature eat?"
        food = gets.chomp.to_s
    end


  end

  def describe_creature
    puts "#{@creature_type} with an affinity for #{@element} loves #{@food}. Special ability: #{@special_ability}"
  end
end
