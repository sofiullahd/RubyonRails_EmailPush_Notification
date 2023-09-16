require "test_helper"

class NotificationsControllerTest < ActionDispatch::IntegrationTest
  test "should get send_email" do
    get notifications_send_email_url
    assert_response :success
  end
end
