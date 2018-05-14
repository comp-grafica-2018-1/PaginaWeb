require 'test_helper'

class OrdenmescamsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ordenmescam = ordenmescams(:one)
  end

  test "should get index" do
    get ordenmescams_url
    assert_response :success
  end

  test "should get new" do
    get new_ordenmescam_url
    assert_response :success
  end

  test "should create ordenmescam" do
    assert_difference('Ordenmescam.count') do
      post ordenmescams_url, params: { ordenmescam: {  } }
    end

    assert_redirected_to ordenmescam_url(Ordenmescam.last)
  end

  test "should show ordenmescam" do
    get ordenmescam_url(@ordenmescam)
    assert_response :success
  end

  test "should get edit" do
    get edit_ordenmescam_url(@ordenmescam)
    assert_response :success
  end

  test "should update ordenmescam" do
    patch ordenmescam_url(@ordenmescam), params: { ordenmescam: {  } }
    assert_redirected_to ordenmescam_url(@ordenmescam)
  end

  test "should destroy ordenmescam" do
    assert_difference('Ordenmescam.count', -1) do
      delete ordenmescam_url(@ordenmescam)
    end

    assert_redirected_to ordenmescams_url
  end
end
