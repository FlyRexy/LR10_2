require "test_helper"

class ServerControllerTest < ActionDispatch::IntegrationTest
  test "should get calculation" do
    get server_calculation_url
    assert_response :success
  end
end
