require 'test_helper'

class UserTest < ActiveSupport::TestCase
  def setup
    @user = User.new(username:"akiascallum", email:"akiascallum@example.com", password: "password")
  end
  
  test "user has username" do
    @user.username = " "
    assert_not @user.valid?
  end
  
  test "user has email" do
    @user.email = " "
    assert_not @user.valid?
  end
  
#   test "user hass password" do
#     @user.password = " "
#     assert_not @user.valid? 
#   end

end