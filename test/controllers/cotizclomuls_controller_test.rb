require 'test_helper'

class CotizclomulsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cotizclomul = cotizclomuls(:one)
  end

  test "should get index" do
    get cotizclomuls_url
    assert_response :success
  end

  test "should get new" do
    get new_cotizclomul_url
    assert_response :success
  end

  test "should create cotizclomul" do
    assert_difference('Cotizclomul.count') do
      post cotizclomuls_url, params: { cotizclomul: { correo: @cotizclomul.correo, nombre: @cotizclomul.nombre } }
    end

    assert_redirected_to cotizclomul_url(Cotizclomul.last)
  end

  test "should show cotizclomul" do
    get cotizclomul_url(@cotizclomul)
    assert_response :success
  end

  test "should get edit" do
    get edit_cotizclomul_url(@cotizclomul)
    assert_response :success
  end

  test "should update cotizclomul" do
    patch cotizclomul_url(@cotizclomul), params: { cotizclomul: { correo: @cotizclomul.correo, nombre: @cotizclomul.nombre } }
    assert_redirected_to cotizclomul_url(@cotizclomul)
  end

  test "should destroy cotizclomul" do
    assert_difference('Cotizclomul.count', -1) do
      delete cotizclomul_url(@cotizclomul)
    end

    assert_redirected_to cotizclomuls_url
  end
end
