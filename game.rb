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
    print "Input the creature's toughness: "
    toughness = gets.chomp.to_i

    user_creature.setup(creature_type, element, power, toughness)

    add_creature(user_creature)

    @fantasyCreatures.each do |creature|
    creature.describe_creature
    end 
  end
end
