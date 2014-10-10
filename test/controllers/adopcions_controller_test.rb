require 'test_helper'

class AdopcionsControllerTest < ActionController::TestCase
  setup do
    @adopcion = adopcions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:adopcions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create adopcion" do
    assert_difference('Adopcion.count') do
      post :create, adopcion: { numero: @adopcion.numero, numero_adultos: @adopcion.numero_adultos, numero_gatos: @adopcion.numero_gatos, numero_ninios: @adopcion.numero_ninios, numero_perros: @adopcion.numero_perros, numero_referencia1: @adopcion.numero_referencia1, numero_referencia2: @adopcion.numero_referencia2, referencia_casa: @adopcion.referencia_casa }
    end

    assert_redirected_to adopcion_path(assigns(:adopcion))
  end

  test "should show adopcion" do
    get :show, id: @adopcion
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @adopcion
    assert_response :success
  end

  test "should update adopcion" do
    patch :update, id: @adopcion, adopcion: { numero: @adopcion.numero, numero_adultos: @adopcion.numero_adultos, numero_gatos: @adopcion.numero_gatos, numero_ninios: @adopcion.numero_ninios, numero_perros: @adopcion.numero_perros, numero_referencia1: @adopcion.numero_referencia1, numero_referencia2: @adopcion.numero_referencia2, referencia_casa: @adopcion.referencia_casa }
    assert_redirected_to adopcion_path(assigns(:adopcion))
  end

  test "should destroy adopcion" do
    assert_difference('Adopcion.count', -1) do
      delete :destroy, id: @adopcion
    end

    assert_redirected_to adopcions_path
  end
end
