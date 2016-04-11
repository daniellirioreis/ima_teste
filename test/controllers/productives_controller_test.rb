require 'test_helper'

class ProductivesControllerTest < ActionController::TestCase
  setup do
    @productive = productives(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:productives)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create productive" do
    assert_difference('Productive.count') do
      post :create, productive: { code: @productive.code, function: @productive.function, name: @productive.name }
    end

    assert_redirected_to productive_path(assigns(:productive))
  end

  test "should show productive" do
    get :show, id: @productive
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @productive
    assert_response :success
  end

  test "should update productive" do
    patch :update, id: @productive, productive: { code: @productive.code, function: @productive.function, name: @productive.name }
    assert_redirected_to productive_path(assigns(:productive))
  end

  test "should destroy productive" do
    assert_difference('Productive.count', -1) do
      delete :destroy, id: @productive
    end

    assert_redirected_to productives_path
  end
end
