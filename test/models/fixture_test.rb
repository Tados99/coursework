require 'test_helper'

class FixtureTest < ActiveSupport::TestCase
  setup do
    @team = teams(:one)
    @team2 = teams(:two)
  end

  test 'should not save empty fixture' do
    fixture = Fixture.new

    fixture.save
    refute fixture.valid?
  end

  test "should save valid fixture" do
    fixture = Fixture.new

    fixture.home_team_id = @team.id
    fixture.away_team_id = @team2.id

    fixture.save
    assert fixture.valid?
  end
end
