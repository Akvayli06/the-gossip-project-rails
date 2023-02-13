require "test_helper"

class MessageControllerTest < ActionDispatch::IntegrationTest
  test "should get team" do
    get message_team_url
    assert_response :success
  end
end
