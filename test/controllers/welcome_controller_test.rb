require 'test_helper'

class WelcomeControllerTest < ActionDispatch::IntegrationTest
  test "should get welcomePage" do
    get welcome_welcomePage_url
    assert_response :success
  end

end
