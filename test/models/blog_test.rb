require 'test_helper'

class BlogTest < ActiveSupport::TestCase
  def setup
    @user = User.new(username:"akiascallum", email:"akiascallum@example.com", password: "password", admin: true)
    @blog = Blog.new(title: "First Title", description: "A really long description", user_id: @user.id)
  end
  
  test "blog should be valid" do
    @user.save
    @blog.user_id = @user.id
    assert @blog.valid?
  end
  
  test "Blog should have title" do
    @blog.title = " "
    assert_not @blog.valid?
  end
  
  test "Blog should have description" do
    @blog.description = " "
    assert_not @blog.valid?
  end
  
  test "Blog title should be unique" do
    @blog.save
    blog2 = Blog.new(title: "First title", description: "A really long description")
    assert_not blog2.valid?
  end
  
  test "Blog title can't be too short" do
    @blog.title = "12"
    assert_not @blog.valid?
  end

  test "Blog title can't be too long" do
      @blog.title = "a" * 100
      assert_not @blog.valid?
  end
  
  test "Description can't be too short" do
    @blog.description = "short"
    assert_not @blog.valid?
  end
  
  test "Description can't be too long" do
    @blog.description = "a" * 10000
    assert_not @blog.valid?
  end
  
  test "Blog has User" do
    @blog.user_id = nil
    assert_not @blog.valid?
  end
  
end