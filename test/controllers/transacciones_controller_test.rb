require 'test_helper'

class TransaccionesControllerTest < ActionDispatch::IntegrationTest
  test "should get cotizaciones" do
    get transacciones_cotizaciones_url
    assert_response :success
  end

  test "should get consultas" do
    get transacciones_consultas_url
    assert_response :success
  end

end
