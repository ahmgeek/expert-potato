require 'test_helper'

class RegistrationsControllerTest < ActionDispatch::IntegrationTest
  test "should register new user" do
    user = users(:evagreen)
    post signup_path(user), params: { user: { username: user } }
    get halls_path
    assert_response :success
  end
end
