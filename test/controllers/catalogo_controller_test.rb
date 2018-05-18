require 'test_helper'

class CatalogoControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get catalogo_index_url
    assert_response :success
  end

  test "should get muebleclomul" do
    get catalogo_muebleclomul_url
    assert_response :success
  end

  test "should get muebleesccam" do
    get catalogo_muebleesccam_url
    assert_response :success
  end

  test "should get mueblemescam" do
    get catalogo_mueblemescam_url
    assert_response :success
  end

  test "should get mueblemesexp" do
    get catalogo_mueblemesexp_url
    assert_response :success
  end

end
