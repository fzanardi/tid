require 'test_helper'

class Mod2sControllerTest < ActionController::TestCase
  setup do
    @mod2 = mod2s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mod2s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mod2" do
    assert_difference('Mod2.count') do
      post :create, mod2: { mod1_name: @mod2.mod1_name, name: @mod2.name }
    end

    assert_redirected_to mod2_path(assigns(:mod2))
  end

  test "should show mod2" do
    get :show, id: @mod2
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @mod2
    assert_response :success
  end

  test "should update mod2" do
    patch :update, id: @mod2, mod2: { mod1_name: @mod2.mod1_name, name: @mod2.name }
    assert_redirected_to mod2_path(assigns(:mod2))
  end

  test "should destroy mod2" do
    assert_difference('Mod2.count', -1) do
      delete :destroy, id: @mod2
    end

    assert_redirected_to mod2s_path
  end
end
