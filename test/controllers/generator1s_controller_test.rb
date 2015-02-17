require 'test_helper'

class Generator1sControllerTest < ActionController::TestCase
  setup do
    @generator1 = generator1s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:generator1s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create generator1" do
    assert_difference('Generator1.count') do
      post :create, generator1: { noma: @generator1.noma }
    end

    assert_redirected_to generator1_path(assigns(:generator1))
  end

  test "should show generator1" do
    get :show, id: @generator1
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @generator1
    assert_response :success
  end

  test "should update generator1" do
    patch :update, id: @generator1, generator1: { noma: @generator1.noma }
    assert_redirected_to generator1_path(assigns(:generator1))
  end

  test "should destroy generator1" do
    assert_difference('Generator1.count', -1) do
      delete :destroy, id: @generator1
    end

    assert_redirected_to generator1s_path
  end
end
