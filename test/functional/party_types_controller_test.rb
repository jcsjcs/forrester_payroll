require 'test_helper'

class PartyTypesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:party_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create party_type" do
    assert_difference('PartyType.count') do
      post :create, :party_type => { }
    end

    assert_redirected_to party_type_path(assigns(:party_type))
  end

  test "should show party_type" do
    get :show, :id => party_types(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => party_types(:one).to_param
    assert_response :success
  end

  test "should update party_type" do
    put :update, :id => party_types(:one).to_param, :party_type => { }
    assert_redirected_to party_type_path(assigns(:party_type))
  end

  test "should destroy party_type" do
    assert_difference('PartyType.count', -1) do
      delete :destroy, :id => party_types(:one).to_param
    end

    assert_redirected_to party_types_path
  end
end
