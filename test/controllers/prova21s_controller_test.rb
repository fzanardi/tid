require 'test_helper'

class Prova21sControllerTest < ActionController::TestCase
  setup do
    @prova21 = prova21s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:prova21s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create prova21" do
    assert_difference('Prova21.count') do
      post :create, prova21: { m11_name: @prova21.m11_name, name: @prova21.name }
    end

    assert_redirected_to prova21_path(assigns(:prova21))
  end

  test "should show prova21" do
    get :show, id: @prova21
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @prova21
    assert_response :success
  end

  test "should update prova21" do
    patch :update, id: @prova21, prova21: { m11_name: @prova21.m11_name, name: @prova21.name }
    assert_redirected_to prova21_path(assigns(:prova21))
  end

  test "should destroy prova21" do
    assert_difference('Prova21.count', -1) do
      delete :destroy, id: @prova21
    end

    assert_redirected_to prova21s_path
  end
end
