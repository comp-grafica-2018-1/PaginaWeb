require 'test_helper'

class OrdenclomulsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ordenclomul = ordenclomuls(:one)
  end

  test "should get index" do
    get ordenclomuls_url
    assert_response :success
  end

  test "should get new" do
    get new_ordenclomul_url
    assert_response :success
  end

  test "should create ordenclomul" do
    assert_difference('Ordenclomul.count') do
      post ordenclomuls_url, params: { ordenclomul: {  } }
    end

    assert_redirected_to ordenclomul_url(Ordenclomul.last)
  end

  test "should show ordenclomul" do
    get ordenclomul_url(@ordenclomul)
    assert_response :success
  end

  test "should get edit" do
    get edit_ordenclomul_url(@ordenclomul)
    assert_response :success
  end

  test "should update ordenclomul" do
    patch ordenclomul_url(@ordenclomul), params: { ordenclomul: {  } }
    assert_redirected_to ordenclomul_url(@ordenclomul)
  end

  test "should destroy ordenclomul" do
    assert_difference('Ordenclomul.count', -1) do
      delete ordenclomul_url(@ordenclomul)
    end

    assert_redirected_to ordenclomuls_url
  end
end
