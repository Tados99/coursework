require "application_system_test_case"

class FixturesTest < ApplicationSystemTestCase
  setup do
    @fixture = fixtures(:one)
  end

  test "visiting the index" do
    visit fixtures_url
    assert_selector "h1", text: "Fixtures"
  end

  test "creating a Fixture" do
    visit fixtures_url
    click_on "New Fixture"

    fill_in "Away score", with: @fixture.away_score
    fill_in "Away team", with: @fixture.away_team_id
    fill_in "Home score", with: @fixture.home_score
    fill_in "Home team", with: @fixture.home_team_id
    click_on "Create Fixture"

    assert_text "Fixture was successfully created"
    click_on "Back"
  end

  test "updating a Fixture" do
    visit fixtures_url
    click_on "Edit", match: :first

    fill_in "Away score", with: @fixture.away_score
    fill_in "Away team", with: @fixture.away_team_id
    fill_in "Home score", with: @fixture.home_score
    fill_in "Home team", with: @fixture.home_team_id
    click_on "Update Fixture"

    assert_text "Fixture was successfully updated"
    click_on "Back"
  end

  test "destroying a Fixture" do
    visit fixtures_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Fixture was successfully destroyed"
  end
end
