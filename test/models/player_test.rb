require 'test_helper'

class PlayerTest < ActiveSupport::TestCase

  setup do
    @team = teams(:one)
  end

  test 'should not save empty player' do
    player = Player.new

    player.save
    refute player.valid?
  end

  test "should save valid player" do
    player = Player.new

    player.team = @team
    player.surname = "test"
    player.forename = "test"

    player.save
    assert player.valid?
  end
end
