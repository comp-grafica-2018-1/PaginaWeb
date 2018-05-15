require 'test_helper'

class OrdenmesexpsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ordenmesexp = ordenmesexps(:one)
  end

  test "should get index" do
    get ordenmesexps_url
    assert_response :success
  end

  test "should get new" do
    get new_ordenmesexp_url
    assert_response :success
  end

  test "should create ordenmesexp" do
    assert_difference('Ordenmesexp.count') do
      post ordenmesexps_url, params: { ordenmesexp: {  } }
    end

    assert_redirected_to ordenmesexp_url(Ordenmesexp.last)
  end

  test "should show ordenmesexp" do
    get ordenmesexp_url(@ordenmesexp)
    assert_response :success
  end

  test "should get edit" do
    get edit_ordenmesexp_url(@ordenmesexp)
    assert_response :success
  end

  test "should update ordenmesexp" do
    patch ordenmesexp_url(@ordenmesexp), params: { ordenmesexp: {  } }
    assert_redirected_to ordenmesexp_url(@ordenmesexp)
  end

  test "should destroy ordenmesexp" do
    assert_difference('Ordenmesexp.count', -1) do
      delete ordenmesexp_url(@ordenmesexp)
    end

    assert_redirected_to ordenmesexps_url
  end
end
