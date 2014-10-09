require 'test_helper'

class VoluntarioMascotaControllerTest < ActionController::TestCase
  setup do
    @voluntario_mascotum = voluntario_mascota(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:voluntario_mascota)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create voluntario_mascotum" do
    assert_difference('VoluntarioMascotum.count') do
      post :create, voluntario_mascotum: {  }
    end

    assert_redirected_to voluntario_mascotum_path(assigns(:voluntario_mascotum))
  end

  test "should show voluntario_mascotum" do
    get :show, id: @voluntario_mascotum
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @voluntario_mascotum
    assert_response :success
  end

  test "should update voluntario_mascotum" do
    patch :update, id: @voluntario_mascotum, voluntario_mascotum: {  }
    assert_redirected_to voluntario_mascotum_path(assigns(:voluntario_mascotum))
  end

  test "should destroy voluntario_mascotum" do
    assert_difference('VoluntarioMascotum.count', -1) do
      delete :destroy, id: @voluntario_mascotum
    end

    assert_redirected_to voluntario_mascota_path
  end
end
