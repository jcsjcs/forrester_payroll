require 'test_helper'

class PartyRolesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:party_roles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create party_role" do
    assert_difference('PartyRole.count') do
      post :create, :party_role => { }
    end

    assert_redirected_to party_role_path(assigns(:party_role))
  end

  test "should show party_role" do
    get :show, :id => party_roles(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => party_roles(:one).to_param
    assert_response :success
  end

  test "should update party_role" do
    put :update, :id => party_roles(:one).to_param, :party_role => { }
    assert_redirected_to party_role_path(assigns(:party_role))
  end

  test "should destroy party_role" do
    assert_difference('PartyRole.count', -1) do
      delete :destroy, :id => party_roles(:one).to_param
    end

    assert_redirected_to party_roles_path
  end
end
