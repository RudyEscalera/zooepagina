require 'test_helper'

class HogarTemporalsControllerTest < ActionController::TestCase
  setup do
    @hogar_temporal = hogar_temporals(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:hogar_temporals)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create hogar_temporal" do
    assert_difference('HogarTemporal.count') do
      post :create, hogar_temporal: { apellidos: @hogar_temporal.apellidos, ci: @hogar_temporal.ci, direccion: @hogar_temporal.direccion, nombres: @hogar_temporal.nombres, numero: @hogar_temporal.numero, telefono_fijo: @hogar_temporal.telefono_fijo }
    end

    assert_redirected_to hogar_temporal_path(assigns(:hogar_temporal))
  end

  test "should show hogar_temporal" do
    get :show, id: @hogar_temporal
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @hogar_temporal
    assert_response :success
  end

  test "should update hogar_temporal" do
    patch :update, id: @hogar_temporal, hogar_temporal: { apellidos: @hogar_temporal.apellidos, ci: @hogar_temporal.ci, direccion: @hogar_temporal.direccion, nombres: @hogar_temporal.nombres, numero: @hogar_temporal.numero, telefono_fijo: @hogar_temporal.telefono_fijo }
    assert_redirected_to hogar_temporal_path(assigns(:hogar_temporal))
  end

  test "should destroy hogar_temporal" do
    assert_difference('HogarTemporal.count', -1) do
      delete :destroy, id: @hogar_temporal
    end

    assert_redirected_to hogar_temporals_path
  end
end
