require 'test_helper'

class RoundtablesControllerTest < ActionController::TestCase
  setup do
    @roundtable = roundtables(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:roundtables)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create roundtable" do
    assert_difference('Roundtable.count') do
      post :create, roundtable: @roundtable.attributes
    end

    assert_redirected_to roundtable_path(assigns(:roundtable))
  end

  test "should show roundtable" do
    get :show, id: @roundtable.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @roundtable.to_param
    assert_response :success
  end

  test "should update roundtable" do
    put :update, id: @roundtable.to_param, roundtable: @roundtable.attributes
    assert_redirected_to roundtable_path(assigns(:roundtable))
  end

  test "should destroy roundtable" do
    assert_difference('Roundtable.count', -1) do
      delete :destroy, id: @roundtable.to_param
    end

    assert_redirected_to roundtables_path
  end
end
