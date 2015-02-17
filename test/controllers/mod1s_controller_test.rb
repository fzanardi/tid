require 'test_helper'

class Mod1sControllerTest < ActionController::TestCase
  setup do
    @mod1 = mod1s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mod1s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mod1" do
    assert_difference('Mod1.count') do
      post :create, mod1: { name: @mod1.name }
    end

    assert_redirected_to mod1_path(assigns(:mod1))
  end

  test "should show mod1" do
    get :show, id: @mod1
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @mod1
    assert_response :success
  end

  test "should update mod1" do
    patch :update, id: @mod1, mod1: { name: @mod1.name }
    assert_redirected_to mod1_path(assigns(:mod1))
  end

  test "should destroy mod1" do
    assert_difference('Mod1.count', -1) do
      delete :destroy, id: @mod1
    end

    assert_redirected_to mod1s_path
  end
end
