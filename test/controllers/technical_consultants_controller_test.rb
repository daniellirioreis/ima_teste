require 'test_helper'

class TechnicalConsultantsControllerTest < ActionController::TestCase
  setup do
    @technical_consultant = technical_consultants(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:technical_consultants)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create technical_consultant" do
    assert_difference('TechnicalConsultant.count') do
      post :create, technical_consultant: { cod: @technical_consultant.cod, name: @technical_consultant.name }
    end

    assert_redirected_to technical_consultant_path(assigns(:technical_consultant))
  end

  test "should show technical_consultant" do
    get :show, id: @technical_consultant
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @technical_consultant
    assert_response :success
  end

  test "should update technical_consultant" do
    patch :update, id: @technical_consultant, technical_consultant: { cod: @technical_consultant.cod, name: @technical_consultant.name }
    assert_redirected_to technical_consultant_path(assigns(:technical_consultant))
  end

  test "should destroy technical_consultant" do
    assert_difference('TechnicalConsultant.count', -1) do
      delete :destroy, id: @technical_consultant
    end

    assert_redirected_to technical_consultants_path
  end
end
