require 'test_helper'

class TroutesControllerTest < ActionController::TestCase
  setup do
    @troute = troutes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:troutes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create troute" do
    assert_difference('Troute.count') do
      post :create, troute: { city_id: @troute.city_id, describe: @troute.describe, name: @troute.name, price: @troute.price }
    end

    assert_redirected_to troute_path(assigns(:troute))
  end

  test "should show troute" do
    get :show, id: @troute
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @troute
    assert_response :success
  end

  test "should update troute" do
    patch :update, id: @troute, troute: { city_id: @troute.city_id, describe: @troute.describe, name: @troute.name, price: @troute.price }
    assert_redirected_to troute_path(assigns(:troute))
  end

  test "should destroy troute" do
    assert_difference('Troute.count', -1) do
      delete :destroy, id: @troute
    end

    assert_redirected_to troutes_path
  end
end
