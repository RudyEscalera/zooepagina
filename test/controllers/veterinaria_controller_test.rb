require 'test_helper'

class VeterinariaControllerTest < ActionController::TestCase
  setup do
    @veterinarium = veterinaria(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:veterinaria)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create veterinarium" do
    assert_difference('Veterinarium.count') do
      post :create, veterinarium: { activo: @veterinarium.activo, descripcion: @veterinarium.descripcion, direccion: @veterinarium.direccion, encargado: @veterinarium.encargado, movil: @veterinarium.movil, nombre: @veterinarium.nombre, telefono: @veterinarium.telefono }
    end

    assert_redirected_to veterinarium_path(assigns(:veterinarium))
  end

  test "should show veterinarium" do
    get :show, id: @veterinarium
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @veterinarium
    assert_response :success
  end

  test "should update veterinarium" do
    patch :update, id: @veterinarium, veterinarium: { activo: @veterinarium.activo, descripcion: @veterinarium.descripcion, direccion: @veterinarium.direccion, encargado: @veterinarium.encargado, movil: @veterinarium.movil, nombre: @veterinarium.nombre, telefono: @veterinarium.telefono }
    assert_redirected_to veterinarium_path(assigns(:veterinarium))
  end

  test "should destroy veterinarium" do
    assert_difference('Veterinarium.count', -1) do
      delete :destroy, id: @veterinarium
    end

    assert_redirected_to veterinaria_path
  end
end
