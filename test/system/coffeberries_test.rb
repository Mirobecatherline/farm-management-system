require "application_system_test_case"

class CoffeberriesTest < ApplicationSystemTestCase
  setup do
    @coffeberry = coffeberries(:one)
  end

  test "visiting the index" do
    visit coffeberries_url
    assert_selector "h1", text: "Coffeberries"
  end

  test "should create coffeberry" do
    visit coffeberries_url
    click_on "New coffeberry"

    fill_in "Name", with: @coffeberry.name
    click_on "Create Coffeberry"

    assert_text "Coffeberry was successfully created"
    click_on "Back"
  end

  test "should update Coffeberry" do
    visit coffeberry_url(@coffeberry)
    click_on "Edit this coffeberry", match: :first

    fill_in "Name", with: @coffeberry.name
    click_on "Update Coffeberry"

    assert_text "Coffeberry was successfully updated"
    click_on "Back"
  end

  test "should destroy Coffeberry" do
    visit coffeberry_url(@coffeberry)
    click_on "Destroy this coffeberry", match: :first

    assert_text "Coffeberry was successfully destroyed"
  end
end
