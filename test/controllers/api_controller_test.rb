require "test_helper"

class ApiControllerTest < ActionDispatch::IntegrationTest
  test "should get V1" do
    get api_V1_url
    assert_response :success
  end

  test "should get home" do
    get api_home_url
    assert_response :success
  end

  test "should get index" do
    get api_index_url
    assert_response :success
  end
end
