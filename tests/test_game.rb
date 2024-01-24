require 'minitest/autorun'
require './game'
require './creature'

class TestGame < Minitest::Test
  def setup
    @game = Game.new
    @fire_dragon = FantasyCreatureGenerator.new
    @fire_dragon.setup("Dragon", "Fire", 10, 10)
    @water_nymph = FantasyCreatureGenerator.new
    @water_nymph.setup("Nymph", "Water", 5, 5)
  end

  def test_initialize
    assert_equal [], @game.fantasyCreatures
  end

  def test_add_creature
    @game.add_creature(@fire_dragon)
    assert_equal [@fire_dragon], @game.fantasyCreatures
    @game.add_creature(@water_nymph)
    assert_equal [@fire_dragon, @water_nymph], @game.fantasyCreatures
  end
end
