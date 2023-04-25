require "test_helper"

class FactoryfarmberriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @factoryfarmberry = factoryfarmberries(:one)
  end

  test "should get index" do
    get factoryfarmberries_url
    assert_response :success
  end

  test "should get new" do
    get new_factoryfarmberry_url
    assert_response :success
  end

  test "should create factoryfarmberry" do
    assert_difference("Factoryfarmberry.count") do
      post factoryfarmberries_url, params: { factoryfarmberry: { coffeberries_id: @factoryfarmberry.coffeberries_id, factoryfarms_id: @factoryfarmberry.factoryfarms_id, kg: @factoryfarmberry.kg, season: @factoryfarmberry.season } }
    end

    assert_redirected_to factoryfarmberry_url(Factoryfarmberry.last)
  end

  test "should show factoryfarmberry" do
    get factoryfarmberry_url(@factoryfarmberry)
    assert_response :success
  end

  test "should get edit" do
    get edit_factoryfarmberry_url(@factoryfarmberry)
    assert_response :success
  end

  test "should update factoryfarmberry" do
    patch factoryfarmberry_url(@factoryfarmberry), params: { factoryfarmberry: { coffeberries_id: @factoryfarmberry.coffeberries_id, factoryfarms_id: @factoryfarmberry.factoryfarms_id, kg: @factoryfarmberry.kg, season: @factoryfarmberry.season } }
    assert_redirected_to factoryfarmberry_url(@factoryfarmberry)
  end

  test "should destroy factoryfarmberry" do
    assert_difference("Factoryfarmberry.count", -1) do
      delete factoryfarmberry_url(@factoryfarmberry)
    end

    assert_redirected_to factoryfarmberries_url
  end
end
