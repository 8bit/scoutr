require 'test_helper'

class OA_MembershipsControllerTest < ActionController::TestCase
  setup do
    @oa_membership = oa_memberships(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:oa_memberships)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create oa_membership" do
    assert_difference('OA_Membership.count') do
      post :create, oa_membership: @oa_membership.attributes
    end

    assert_redirected_to oa_membership_path(assigns(:oa_membership))
  end

  test "should show oa_membership" do
    get :show, id: @oa_membership.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @oa_membership.to_param
    assert_response :success
  end

  test "should update oa_membership" do
    put :update, id: @oa_membership.to_param, oa_membership: @oa_membership.attributes
    assert_redirected_to oa_membership_path(assigns(:oa_membership))
  end

  test "should destroy oa_membership" do
    assert_difference('OA_Membership.count', -1) do
      delete :destroy, id: @oa_membership.to_param
    end

    assert_redirected_to oa_memberships_path
  end
end
