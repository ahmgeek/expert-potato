require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test "should save new user" do
    user = User.new(username: 'ahmgeek')
    assert user.save
  end

  test "should not save user without username" do
    user = User.new
    assert_not user.save
  end

  test "should not save user with an existing username" do
    User.new(username: 'ahmgeek').save
    assert_not User.new(username: 'ahmgeek').save
  end
end
