require_relative 'creature'

class Game
  attr_reader :fantasyCreatures

  def initialize
    @fantasyCreatures = []
  end

  def add_creature(creature)
    @fantasyCreatures.push(creature)
  end

  def start_game
    print "Input a creature type: "
    creature_type = gets.chomp.to_s
    print "Input an creature's element: "
    element = gets.chomp.to_s.downcase.capitalize
    user_creature = FantasyCreatureGenerator.new
    print "Input the creature's power level: "
    power = gets.chomp.to_i
    print "Input the creature's toughness level: "
    toughness = gets.chomp.to_i

    user_creature.setup(creature_type, element, power, toughness)

    self.add_creature(user_creature)

    end 

    def describe_creatures
      @fantasyCreatures.each do |creature|
        puts creature.describe_creature
      end
      
  end
end
