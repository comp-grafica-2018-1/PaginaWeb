require 'test_helper'

class CotizmesexpsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cotizmesexp = cotizmesexps(:one)
  end

  test "should get index" do
    get cotizmesexps_url
    assert_response :success
  end

  test "should get new" do
    get new_cotizmesexp_url
    assert_response :success
  end

  test "should create cotizmesexp" do
    assert_difference('Cotizmesexp.count') do
      post cotizmesexps_url, params: { cotizmesexp: { correo: @cotizmesexp.correo, nombre: @cotizmesexp.nombre } }
    end

    assert_redirected_to cotizmesexp_url(Cotizmesexp.last)
  end

  test "should show cotizmesexp" do
    get cotizmesexp_url(@cotizmesexp)
    assert_response :success
  end

  test "should get edit" do
    get edit_cotizmesexp_url(@cotizmesexp)
    assert_response :success
  end

  test "should update cotizmesexp" do
    patch cotizmesexp_url(@cotizmesexp), params: { cotizmesexp: { correo: @cotizmesexp.correo, nombre: @cotizmesexp.nombre } }
    assert_redirected_to cotizmesexp_url(@cotizmesexp)
  end

  test "should destroy cotizmesexp" do
    assert_difference('Cotizmesexp.count', -1) do
      delete cotizmesexp_url(@cotizmesexp)
    end

    assert_redirected_to cotizmesexps_url
  end
end
