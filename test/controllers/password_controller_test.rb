require "test_helper"

class PasswordControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get password_index_url
    assert_response :success
  end
end
