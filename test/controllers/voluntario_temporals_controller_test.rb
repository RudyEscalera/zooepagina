require 'test_helper'

class VoluntarioTemporalsControllerTest < ActionController::TestCase
  setup do
    @voluntario_temporal = voluntario_temporals(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:voluntario_temporals)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create voluntario_temporal" do
    assert_difference('VoluntarioTemporal.count') do
      post :create, voluntario_temporal: { activo: @voluntario_temporal.activo, correo: @voluntario_temporal.correo, genero: @voluntario_temporal.genero, nombre: @voluntario_temporal.nombre, ocupacion: @voluntario_temporal.ocupacion, telefono: @voluntario_temporal.telefono }
    end

    assert_redirected_to voluntario_temporal_path(assigns(:voluntario_temporal))
  end

  test "should show voluntario_temporal" do
    get :show, id: @voluntario_temporal
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @voluntario_temporal
    assert_response :success
  end

  test "should update voluntario_temporal" do
    patch :update, id: @voluntario_temporal, voluntario_temporal: { activo: @voluntario_temporal.activo, correo: @voluntario_temporal.correo, genero: @voluntario_temporal.genero, nombre: @voluntario_temporal.nombre, ocupacion: @voluntario_temporal.ocupacion, telefono: @voluntario_temporal.telefono }
    assert_redirected_to voluntario_temporal_path(assigns(:voluntario_temporal))
  end

  test "should destroy voluntario_temporal" do
    assert_difference('VoluntarioTemporal.count', -1) do
      delete :destroy, id: @voluntario_temporal
    end

    assert_redirected_to voluntario_temporals_path
  end
end
