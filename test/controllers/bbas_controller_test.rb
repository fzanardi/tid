require 'test_helper'

class BbasControllerTest < ActionController::TestCase
  setup do
    @bba = bbas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bbas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bba" do
    assert_difference('Bba.count') do
      post :create, bba: { name: @bba.name }
    end

    assert_redirected_to bba_path(assigns(:bba))
  end

  test "should show bba" do
    get :show, id: @bba
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @bba
    assert_response :success
  end

  test "should update bba" do
    patch :update, id: @bba, bba: { name: @bba.name }
    assert_redirected_to bba_path(assigns(:bba))
  end

  test "should destroy bba" do
    assert_difference('Bba.count', -1) do
      delete :destroy, id: @bba
    end

    assert_redirected_to bbas_path
  end
end
