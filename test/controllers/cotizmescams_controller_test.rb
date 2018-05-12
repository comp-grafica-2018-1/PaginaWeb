require 'test_helper'

class CotizmescamsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cotizmescam = cotizmescams(:one)
  end

  test "should get index" do
    get cotizmescams_url
    assert_response :success
  end

  test "should get new" do
    get new_cotizmescam_url
    assert_response :success
  end

  test "should create cotizmescam" do
    assert_difference('Cotizmescam.count') do
      post cotizmescams_url, params: { cotizmescam: { correo: @cotizmescam.correo, nombre: @cotizmescam.nombre } }
    end

    assert_redirected_to cotizmescam_url(Cotizmescam.last)
  end

  test "should show cotizmescam" do
    get cotizmescam_url(@cotizmescam)
    assert_response :success
  end

  test "should get edit" do
    get edit_cotizmescam_url(@cotizmescam)
    assert_response :success
  end

  test "should update cotizmescam" do
    patch cotizmescam_url(@cotizmescam), params: { cotizmescam: { correo: @cotizmescam.correo, nombre: @cotizmescam.nombre } }
    assert_redirected_to cotizmescam_url(@cotizmescam)
  end

  test "should destroy cotizmescam" do
    assert_difference('Cotizmescam.count', -1) do
      delete cotizmescam_url(@cotizmescam)
    end

    assert_redirected_to cotizmescams_url
  end
end
