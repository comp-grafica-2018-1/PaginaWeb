require 'test_helper'

class OrdenesccamsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ordenesccam = ordenesccams(:one)
  end

  test "should get index" do
    get ordenesccams_url
    assert_response :success
  end

  test "should get new" do
    get new_ordenesccam_url
    assert_response :success
  end

  test "should create ordenesccam" do
    assert_difference('Ordenesccam.count') do
      post ordenesccams_url, params: { ordenesccam: {  } }
    end

    assert_redirected_to ordenesccam_url(Ordenesccam.last)
  end

  test "should show ordenesccam" do
    get ordenesccam_url(@ordenesccam)
    assert_response :success
  end

  test "should get edit" do
    get edit_ordenesccam_url(@ordenesccam)
    assert_response :success
  end

  test "should update ordenesccam" do
    patch ordenesccam_url(@ordenesccam), params: { ordenesccam: {  } }
    assert_redirected_to ordenesccam_url(@ordenesccam)
  end

  test "should destroy ordenesccam" do
    assert_difference('Ordenesccam.count', -1) do
      delete ordenesccam_url(@ordenesccam)
    end

    assert_redirected_to ordenesccams_url
  end
end
