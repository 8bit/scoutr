require 'test_helper'

class LodgesControllerTest < ActionController::TestCase
  setup do
    @lodge = lodges(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:lodges)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create lodge" do
    assert_difference('Lodge.count') do
      post :create, lodge: @lodge.attributes
    end

    assert_redirected_to lodge_path(assigns(:lodge))
  end

  test "should show lodge" do
    get :show, id: @lodge.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @lodge.to_param
    assert_response :success
  end

  test "should update lodge" do
    put :update, id: @lodge.to_param, lodge: @lodge.attributes
    assert_redirected_to lodge_path(assigns(:lodge))
  end

  test "should destroy lodge" do
    assert_difference('Lodge.count', -1) do
      delete :destroy, id: @lodge.to_param
    end

    assert_redirected_to lodges_path
  end
end
