require 'test_helper'

class CotizesccamsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cotizesccam = cotizesccams(:one)
  end

  test "should get index" do
    get cotizesccams_url
    assert_response :success
  end

  test "should get new" do
    get new_cotizesccam_url
    assert_response :success
  end

  test "should create cotizesccam" do
    assert_difference('Cotizesccam.count') do
      post cotizesccams_url, params: { cotizesccam: { correo: @cotizesccam.correo, nombre: @cotizesccam.nombre } }
    end

    assert_redirected_to cotizesccam_url(Cotizesccam.last)
  end

  test "should show cotizesccam" do
    get cotizesccam_url(@cotizesccam)
    assert_response :success
  end

  test "should get edit" do
    get edit_cotizesccam_url(@cotizesccam)
    assert_response :success
  end

  test "should update cotizesccam" do
    patch cotizesccam_url(@cotizesccam), params: { cotizesccam: { correo: @cotizesccam.correo, nombre: @cotizesccam.nombre } }
    assert_redirected_to cotizesccam_url(@cotizesccam)
  end

  test "should destroy cotizesccam" do
    assert_difference('Cotizesccam.count', -1) do
      delete cotizesccam_url(@cotizesccam)
    end

    assert_redirected_to cotizesccams_url
  end
end
