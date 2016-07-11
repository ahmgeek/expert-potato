ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'
class ActiveSupport::TestCase
  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  fixtures :all

  # Add more helper methods to be used by all tests here...
  module SignInHelper
    def sign_in_as(user)
      post signin_url(user), params: { user: { username: user} }
    end

    def sign_out
    delete signout_url
    end
  end

  class ActionDispatch::IntegrationTest
    include SignInHelper
  end
end
