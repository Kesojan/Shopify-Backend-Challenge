require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test "should not allow duplicate user names" do
    user1 = User.create(username: "harvey", password: "lawyer")
    user2 = User.new(username: "harvey", password: "lawyer")
    user1.save
    assert_not user2.save, "Saved a duplicate user name"
  end

  test "should not allow passwords under 6 characters" do
    user1 = User.create(username: "harvey", password: "one")
    user1.save
    assert_not user1.save, "Saved a invalid password"
  end
end