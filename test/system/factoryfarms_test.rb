require "application_system_test_case"

class FactoryfarmsTest < ApplicationSystemTestCase
  setup do
    @factoryfarm = factoryfarms(:one)
  end

  test "visiting the index" do
    visit factoryfarms_url
    assert_selector "h1", text: "Factoryfarms"
  end

  test "should create factoryfarm" do
    visit factoryfarms_url
    click_on "New factoryfarm"

    fill_in "Factory", with: @factoryfarm.factory_id
    fill_in "Name", with: @factoryfarm.name
    click_on "Create Factoryfarm"

    assert_text "Factoryfarm was successfully created"
    click_on "Back"
  end

  test "should update Factoryfarm" do
    visit factoryfarm_url(@factoryfarm)
    click_on "Edit this factoryfarm", match: :first

    fill_in "Factory", with: @factoryfarm.factory_id
    fill_in "Name", with: @factoryfarm.name
    click_on "Update Factoryfarm"

    assert_text "Factoryfarm was successfully updated"
    click_on "Back"
  end

  test "should destroy Factoryfarm" do
    visit factoryfarm_url(@factoryfarm)
    click_on "Destroy this factoryfarm", match: :first

    assert_text "Factoryfarm was successfully destroyed"
  end
end
