require 'test_helper'

class PallasControllerTest < ActionController::TestCase
  setup do
    @palla = pallas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pallas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create palla" do
    assert_difference('Palla.count') do
      post :create, palla: { color: @palla.color, price: @palla.price }
    end

    assert_redirected_to palla_path(assigns(:palla))
  end

  test "should show palla" do
    get :show, id: @palla
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @palla
    assert_response :success
  end

  test "should update palla" do
    patch :update, id: @palla, palla: { color: @palla.color, price: @palla.price }
    assert_redirected_to palla_path(assigns(:palla))
  end

  test "should destroy palla" do
    assert_difference('Palla.count', -1) do
      delete :destroy, id: @palla
    end

    assert_redirected_to pallas_path
  end
end
