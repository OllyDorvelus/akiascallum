class BlogsController < ApplicationController
 
  before_action :set_blog, only: [:show, :edit, :update, :destroy]
  before_action :is_admin, only: [:edit, :new, :update, :destroy]
  
  def index
    @blogs = Blog.paginate(page: params[:page], per_page: 10)
  end
  
  def show
    @photos = ['kiadesk.jpg', 'kiacongress.jpg', "kiabag.jpg", "kiarunback.jpg"]
    @counter = 0
  end
  
  def new
    @blog = Blog.new
  end
  
  def create
    @blog = Blog.new(blog_params)
    @blog.user = current_user
      if @blog.save
      #  flash[:success] = "Article was succesfully created"
        redirect_to blog_path(@blog)
      else
        render 'new'
      end
  end
  
  def edit
    
  end
  
  def update
    
  end
  
  def destory 
    
  end
  
  private
  
  def blog_params 
    params.require(:blog).permit(:title, :description)
  end
  
  def set_blog
    @blog = Blog.find(params[:id])
  end
  
  def is_admin
    if logged_in?
       if !current_user.admin?
         redirect_to root_path
       end
    else 
      redirect_to root_path
    end
  end

end