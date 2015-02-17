require 'test_helper'

class P233sControllerTest < ActionController::TestCase
  setup do
    @p233 = p233s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:p233s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create p233" do
    assert_difference('P233.count') do
      post :create, p233: { nome: @p233.nome }
    end

    assert_redirected_to p233_path(assigns(:p233))
  end

  test "should show p233" do
    get :show, id: @p233
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @p233
    assert_response :success
  end

  test "should update p233" do
    patch :update, id: @p233, p233: { nome: @p233.nome }
    assert_redirected_to p233_path(assigns(:p233))
  end

  test "should destroy p233" do
    assert_difference('P233.count', -1) do
      delete :destroy, id: @p233
    end

    assert_redirected_to p233s_path
  end
end
