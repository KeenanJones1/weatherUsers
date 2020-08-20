require 'test_helper'

class GControllerTest < ActionDispatch::IntegrationTest
  test "should get city" do
    get g_city_url
    assert_response :success
  end

end
