require 'test_helper'

class M11sControllerTest < ActionController::TestCase
  setup do
    @m11 = m11s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:m11s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create m11" do
    assert_difference('M11.count') do
      post :create, m11: { namoe: @m11.namoe }
    end

    assert_redirected_to m11_path(assigns(:m11))
  end

  test "should show m11" do
    get :show, id: @m11
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @m11
    assert_response :success
  end

  test "should update m11" do
    patch :update, id: @m11, m11: { namoe: @m11.namoe }
    assert_redirected_to m11_path(assigns(:m11))
  end

  test "should destroy m11" do
    assert_difference('M11.count', -1) do
      delete :destroy, id: @m11
    end

    assert_redirected_to m11s_path
  end
end
