require 'minitest/autorun'
require_relative 'game'

class GameTest < Minitest::Test
  def test_game_setup
    game = Game.new
    assert_equal 2, game.fantasyCreatures.length
  end
end
