require "application_system_test_case"

class FactoryfarmberriesTest < ApplicationSystemTestCase
  setup do
    @factoryfarmberry = factoryfarmberries(:one)
  end

  test "visiting the index" do
    visit factoryfarmberries_url
    assert_selector "h1", text: "Factoryfarmberries"
  end

  test "should create factoryfarmberry" do
    visit factoryfarmberries_url
    click_on "New factoryfarmberry"

    fill_in "Coffeberries", with: @factoryfarmberry.coffeberries_id
    fill_in "Factoryfarms", with: @factoryfarmberry.factoryfarms_id
    fill_in "Kg", with: @factoryfarmberry.kg
    fill_in "Season", with: @factoryfarmberry.season
    click_on "Create Factoryfarmberry"

    assert_text "Factoryfarmberry was successfully created"
    click_on "Back"
  end

  test "should update Factoryfarmberry" do
    visit factoryfarmberry_url(@factoryfarmberry)
    click_on "Edit this factoryfarmberry", match: :first

    fill_in "Coffeberries", with: @factoryfarmberry.coffeberries_id
    fill_in "Factoryfarms", with: @factoryfarmberry.factoryfarms_id
    fill_in "Kg", with: @factoryfarmberry.kg
    fill_in "Season", with: @factoryfarmberry.season
    click_on "Update Factoryfarmberry"

    assert_text "Factoryfarmberry was successfully updated"
    click_on "Back"
  end

  test "should destroy Factoryfarmberry" do
    visit factoryfarmberry_url(@factoryfarmberry)
    click_on "Destroy this factoryfarmberry", match: :first

    assert_text "Factoryfarmberry was successfully destroyed"
  end
end
