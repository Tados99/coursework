require 'test_helper'

class TeamTest < ActiveSupport::TestCase

  test "should not save empty team" do
    team = Team.new

    team.save
    refute team.valid?
  end
  test "should save valid team" do
    team = Team.new

    team.name = "Hello Sport"
    team.city = "London"
    team.est_year = "2020-01-01"
    team.championships_won = 0

    team.save
    assert team.valid?
  end

  test "should not save duplicate teams" do
    teamOG = Team.new

    teamOG.name = "Hello Sport"
    teamOG.city = "London"
    teamOG.est_year = "2020-01-01"
    teamOG.championships_won = 0

    teamOG.save
    assert teamOG.valid?

    team = Team.new
    
    team.name = "Hello Sport"
    team.city = "London"
    team.est_year = "2020-01-01"
    team.championships_won = 0

    team.save
    refute team.valid?
  end
end
