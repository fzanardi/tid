require 'test_helper'

class M2sControllerTest < ActionController::TestCase
  setup do
    @m2 = m2s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:m2s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create m2" do
    assert_difference('M2.count') do
      post :create, m2: { address: @m2.address }
    end

    assert_redirected_to m2_path(assigns(:m2))
  end

  test "should show m2" do
    get :show, id: @m2
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @m2
    assert_response :success
  end

  test "should update m2" do
    patch :update, id: @m2, m2: { address: @m2.address }
    assert_redirected_to m2_path(assigns(:m2))
  end

  test "should destroy m2" do
    assert_difference('M2.count', -1) do
      delete :destroy, id: @m2
    end

    assert_redirected_to m2s_path
  end
end
