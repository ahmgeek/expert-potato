require 'test_helper'

class HallTest < ActiveSupport::TestCase
  setup do
    @hall = halls(:room1)
    @hall2 = Hall.create!(name: "room 3")
  end

  test "to_param should urlify it self" do
    assert_equal(@hall.to_param, "room-1")
  end

  test "should urlify the name" do
    assert_equal(@hall2.permalink, "room-3")
  end


  should validate_presence_of(:name)
  should validate_uniqueness_of(:name)
  should have_many(:users)
  should have_many(:messages)

end
