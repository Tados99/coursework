require 'test_helper'

class FixtureTest < ActiveSupport::TestCase

  test "should not save empty fixture" do
    fixture = Fixture.new

    fixture.save
    refute fixture.valid?
  end

  test "should save valid fixture" do
    fixture = Fixture.new

    fixture.home = "Hello Sport"
    fixture.away = "Best Team Ever"
    fixture.score_home = 12
    fixture.score_away = 15

    fixture.save
    assert fixture.valid?
  end
end
