require 'test_helper'

class M12sControllerTest < ActionController::TestCase
  setup do
    @m12 = m12s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:m12s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create m12" do
    assert_difference('M12.count') do
      post :create, m12: { amount: @m12.amount, name: @m12.name }
    end

    assert_redirected_to m12_path(assigns(:m12))
  end

  test "should show m12" do
    get :show, id: @m12
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @m12
    assert_response :success
  end

  test "should update m12" do
    patch :update, id: @m12, m12: { amount: @m12.amount, name: @m12.name }
    assert_redirected_to m12_path(assigns(:m12))
  end

  test "should destroy m12" do
    assert_difference('M12.count', -1) do
      delete :destroy, id: @m12
    end

    assert_redirected_to m12s_path
  end
end
