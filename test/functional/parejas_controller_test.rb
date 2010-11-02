require 'test_helper'

class ParejasControllerTest < ActionController::TestCase
  setup do
    @pareja = parejas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:parejas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pareja" do
    assert_difference('Pareja.count') do
      post :create, :pareja => @pareja.attributes
    end

    assert_redirected_to pareja_path(assigns(:pareja))
  end

  test "should show pareja" do
    get :show, :id => @pareja.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @pareja.to_param
    assert_response :success
  end

  test "should update pareja" do
    put :update, :id => @pareja.to_param, :pareja => @pareja.attributes
    assert_redirected_to pareja_path(assigns(:pareja))
  end

  test "should destroy pareja" do
    assert_difference('Pareja.count', -1) do
      delete :destroy, :id => @pareja.to_param
    end

    assert_redirected_to parejas_path
  end
end
