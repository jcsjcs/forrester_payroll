require 'test_helper'

class PartyRoleTypesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:party_role_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create party_role_type" do
    assert_difference('PartyRoleType.count') do
      post :create, :party_role_type => { }
    end

    assert_redirected_to party_role_type_path(assigns(:party_role_type))
  end

  test "should show party_role_type" do
    get :show, :id => party_role_types(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => party_role_types(:one).to_param
    assert_response :success
  end

  test "should update party_role_type" do
    put :update, :id => party_role_types(:one).to_param, :party_role_type => { }
    assert_redirected_to party_role_type_path(assigns(:party_role_type))
  end

  test "should destroy party_role_type" do
    assert_difference('PartyRoleType.count', -1) do
      delete :destroy, :id => party_role_types(:one).to_param
    end

    assert_redirected_to party_role_types_path
  end
end
