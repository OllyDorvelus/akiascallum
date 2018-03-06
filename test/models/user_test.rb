require 'test_helper'

class UserTest < ActiveSupport::TestCase
  def setup
    @user = User.new(username:"akiascallum", email:"akiascallum@example.com", password: "password")
  end

  
  test "is username there" do
    @user.username = " "
    assert_not @user.valid?
  end
  
  test "is email there" do
    @user.email = " "
    assert_not @user.valid?
  end 
  
  test "is username unique" do
    @user.save
    user2 = User.new(username: "AkiaSCallum", email: "username2@example.com", password: "password2")
    assert_not user2.valid?
  end
  
    test "is email unique" do
    @user.save
    user2 = User.new(username: "Usernameeee", email: "AkiaSCallum@example.com", password: "password2")
    assert_not user2.valid?
  end
  
  test "is username too short" do
    @user.username = "aa"
    assert_not @user.valid?
  end 
  
  test "is valid email" do
    @user.email = "email!.com"
    assert_not @user.valid?
  end
end