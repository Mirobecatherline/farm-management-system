require "application_system_test_case"

class FarmerberriesTest < ApplicationSystemTestCase
  setup do
    @farmerberry = farmerberries(:one)
  end

  test "visiting the index" do
    visit farmerberries_url
    assert_selector "h1", text: "Farmerberries"
  end

  test "should create farmerberry" do
    visit farmerberries_url
    click_on "New farmerberry"

    fill_in "Coffeberries", with: @farmerberry.coffeberries_id
    fill_in "Farmers", with: @farmerberry.farmers_id
    fill_in "Kg", with: @farmerberry.kg
    fill_in "Season", with: @farmerberry.season
    click_on "Create Farmerberry"

    assert_text "Farmerberry was successfully created"
    click_on "Back"
  end

  test "should update Farmerberry" do
    visit farmerberry_url(@farmerberry)
    click_on "Edit this farmerberry", match: :first

    fill_in "Coffeberries", with: @farmerberry.coffeberries_id
    fill_in "Farmers", with: @farmerberry.farmers_id
    fill_in "Kg", with: @farmerberry.kg
    fill_in "Season", with: @farmerberry.season
    click_on "Update Farmerberry"

    assert_text "Farmerberry was successfully updated"
    click_on "Back"
  end

  test "should destroy Farmerberry" do
    visit farmerberry_url(@farmerberry)
    click_on "Destroy this farmerberry", match: :first

    assert_text "Farmerberry was successfully destroyed"
  end
end
