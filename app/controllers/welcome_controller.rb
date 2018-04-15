class WelcomeController < ApplicationController
  def index
    @latest_blogs = Blog.limit(2).order('id desc')
    @latest_photos = Photo.limit(10).order('id desc')
  end
end
  