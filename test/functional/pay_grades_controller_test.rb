require 'test_helper'

class PayGradesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pay_grades)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pay_grade" do
    assert_difference('PayGrade.count') do
      post :create, :pay_grade => { }
    end

    assert_redirected_to pay_grade_path(assigns(:pay_grade))
  end

  test "should show pay_grade" do
    get :show, :id => pay_grades(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => pay_grades(:one).to_param
    assert_response :success
  end

  test "should update pay_grade" do
    put :update, :id => pay_grades(:one).to_param, :pay_grade => { }
    assert_redirected_to pay_grade_path(assigns(:pay_grade))
  end

  test "should destroy pay_grade" do
    assert_difference('PayGrade.count', -1) do
      delete :destroy, :id => pay_grades(:one).to_param
    end

    assert_redirected_to pay_grades_path
  end
end
