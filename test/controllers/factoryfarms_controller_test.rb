require "test_helper"

class FactoryfarmsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @factoryfarm = factoryfarms(:one)
  end

  test "should get index" do
    get factoryfarms_url
    assert_response :success
  end

  test "should get new" do
    get new_factoryfarm_url
    assert_response :success
  end

  test "should create factoryfarm" do
    assert_difference("Factoryfarm.count") do
      post factoryfarms_url, params: { factoryfarm: { factory_id: @factoryfarm.factory_id, name: @factoryfarm.name } }
    end

    assert_redirected_to factoryfarm_url(Factoryfarm.last)
  end

  test "should show factoryfarm" do
    get factoryfarm_url(@factoryfarm)
    assert_response :success
  end

  test "should get edit" do
    get edit_factoryfarm_url(@factoryfarm)
    assert_response :success
  end

  test "should update factoryfarm" do
    patch factoryfarm_url(@factoryfarm), params: { factoryfarm: { factory_id: @factoryfarm.factory_id, name: @factoryfarm.name } }
    assert_redirected_to factoryfarm_url(@factoryfarm)
  end

  test "should destroy factoryfarm" do
    assert_difference("Factoryfarm.count", -1) do
      delete factoryfarm_url(@factoryfarm)
    end

    assert_redirected_to factoryfarms_url
  end
end
