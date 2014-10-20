require 'test_helper'

class RescatesControllerTest < ActionController::TestCase
  setup do
    @rescate = rescates(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:rescates)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create rescate" do
    assert_difference('Rescate.count') do
      post :create, rescate: { direccion_rescate: @rescate.direccion_rescate, fecha: @rescate.fecha, observacion: @rescate.observacion }
    end

    assert_redirected_to rescate_path(assigns(:rescate))
  end

  test "should show rescate" do
    get :show, id: @rescate
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @rescate
    assert_response :success
  end

  test "should update rescate" do
    patch :update, id: @rescate, rescate: { direccion_rescate: @rescate.direccion_rescate, fecha: @rescate.fecha, observacion: @rescate.observacion }
    assert_redirected_to rescate_path(assigns(:rescate))
  end

  test "should destroy rescate" do
    assert_difference('Rescate.count', -1) do
      delete :destroy, id: @rescate
    end

    assert_redirected_to rescates_path
  end
end
