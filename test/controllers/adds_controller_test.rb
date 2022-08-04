require "test_helper"

class AddsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get adds_new_url
    assert_response :success
  end
end
