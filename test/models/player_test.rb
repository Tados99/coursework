require 'test_helper'

class PlayerTest < ActiveSupport::TestCase
  test "should not save empty player" do
    player = Player.new

    player.save
    refute player.valid?
  end
  test "should save valid player" do
    player = Player.new

    player.surname = "Random"
    player.forename = "James"
    player.team = "Hello Sport"
    player.dob = "1999-03-04"
    player.games_played = 3
    player.scores = 2
    player.assists = 4

    player.save
    assert player.valid?
  end
end
