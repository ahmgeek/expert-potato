require 'test_helper'

class WelcomeControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    welcome_index_url = root_path
    get welcome_index_url
    assert_response :success
  end

end
