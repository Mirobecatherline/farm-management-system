require "test_helper"

class CoffeberriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @coffeberry = coffeberries(:one)
  end

  test "should get index" do
    get coffeberries_url
    assert_response :success
  end

  test "should get new" do
    get new_coffeberry_url
    assert_response :success
  end

  test "should create coffeberry" do
    assert_difference("Coffeberry.count") do
      post coffeberries_url, params: { coffeberry: { name: @coffeberry.name } }
    end

    assert_redirected_to coffeberry_url(Coffeberry.last)
  end

  test "should show coffeberry" do
    get coffeberry_url(@coffeberry)
    assert_response :success
  end

  test "should get edit" do
    get edit_coffeberry_url(@coffeberry)
    assert_response :success
  end

  test "should update coffeberry" do
    patch coffeberry_url(@coffeberry), params: { coffeberry: { name: @coffeberry.name } }
    assert_redirected_to coffeberry_url(@coffeberry)
  end

  test "should destroy coffeberry" do
    assert_difference("Coffeberry.count", -1) do
      delete coffeberry_url(@coffeberry)
    end

    assert_redirected_to coffeberries_url
  end
end
