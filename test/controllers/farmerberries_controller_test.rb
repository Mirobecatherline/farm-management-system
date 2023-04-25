require "test_helper"

class FarmerberriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @farmerberry = farmerberries(:one)
  end

  test "should get index" do
    get farmerberries_url
    assert_response :success
  end

  test "should get new" do
    get new_farmerberry_url
    assert_response :success
  end

  test "should create farmerberry" do
    assert_difference("Farmerberry.count") do
      post farmerberries_url, params: { farmerberry: { coffeberries_id: @farmerberry.coffeberries_id, farmers_id: @farmerberry.farmers_id, kg: @farmerberry.kg, season: @farmerberry.season } }
    end

    assert_redirected_to farmerberry_url(Farmerberry.last)
  end

  test "should show farmerberry" do
    get farmerberry_url(@farmerberry)
    assert_response :success
  end

  test "should get edit" do
    get edit_farmerberry_url(@farmerberry)
    assert_response :success
  end

  test "should update farmerberry" do
    patch farmerberry_url(@farmerberry), params: { farmerberry: { coffeberries_id: @farmerberry.coffeberries_id, farmers_id: @farmerberry.farmers_id, kg: @farmerberry.kg, season: @farmerberry.season } }
    assert_redirected_to farmerberry_url(@farmerberry)
  end

  test "should destroy farmerberry" do
    assert_difference("Farmerberry.count", -1) do
      delete farmerberry_url(@farmerberry)
    end

    assert_redirected_to farmerberries_url
  end
end
