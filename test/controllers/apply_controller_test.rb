require "test_helper"

class ApplyControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get apply_create_url
    assert_response :success
  end

  test "should get destroy" do
    get apply_destroy_url
    assert_response :success
  end
end
