require 'test_helper'

class RegistrationsControllerTest < ActionDispatch::IntegrationTest

  test "should require authentication" do
    @user = nil
    get :index
    assert_redirect_to regestrations_path
  end
end
