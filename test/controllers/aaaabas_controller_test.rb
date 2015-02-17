require 'test_helper'

class AaaabasControllerTest < ActionController::TestCase
  setup do
    @aaaaba = aaaabas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:aaaabas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create aaaaba" do
    assert_difference('Aaaaba.count') do
      post :create, aaaaba: { nome: @aaaaba.nome, prova_name: @aaaaba.prova_name }
    end

    assert_redirected_to aaaaba_path(assigns(:aaaaba))
  end

  test "should show aaaaba" do
    get :show, id: @aaaaba
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @aaaaba
    assert_response :success
  end

  test "should update aaaaba" do
    patch :update, id: @aaaaba, aaaaba: { nome: @aaaaba.nome, prova_name: @aaaaba.prova_name }
    assert_redirected_to aaaaba_path(assigns(:aaaaba))
  end

  test "should destroy aaaaba" do
    assert_difference('Aaaaba.count', -1) do
      delete :destroy, id: @aaaaba
    end

    assert_redirected_to aaaabas_path
  end
end
