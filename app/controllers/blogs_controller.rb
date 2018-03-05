class BlogController < ApplicationController
  
  def show
    
  end
  
  def new
    
  end
  
  def create
    
  end
  
  def edit
    
  end
  
  def update
    
  end
  
  def destory 
    
  end
  
  private
  def set_blog
    @blog = Blog.find(params[:id])
  end

end