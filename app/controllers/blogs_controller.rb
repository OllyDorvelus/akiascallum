class BlogsController < ApplicationController
 
  before_action :set_blog, only: [:show, :edit, :update, :destroy]
  
  def index
    @blogs = Blog.paginate(page: params[:page], per_page: 5)
  end
  
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