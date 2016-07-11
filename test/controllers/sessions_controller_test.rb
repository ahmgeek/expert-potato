require 'test_helper'

class SessionsControllerTest < ActionDispatch::IntegrationTest
  test "logged in user should redirected to halls" do
    user = users(:evagreen)
    sign_in_as(user)
    get halls_path
    assert_response :redirect
    follow_redirect!
  end

  test "Signed in user should sign out" do
    user = users(:evagreen)
    sign_in_as(user)
    get halls_path
    assert_response :redirect
    follow_redirect!
    sign_out
    assert_response :redirect
  end
end
