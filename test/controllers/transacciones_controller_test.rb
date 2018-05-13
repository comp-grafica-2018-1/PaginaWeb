require 'test_helper'

class TransaccionesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get transacciones_index_url
    assert_response :success
  end

  test "should get miscotizaciones" do
    get transacciones_miscotizaciones_url
    assert_response :success
  end

  test "should get mispedidos" do
    get transacciones_mispedidos_url
    assert_response :success
  end

end
