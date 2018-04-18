class BlogsController < ApplicationController
 
  before_action :set_blog, only: [:show, :edit, :update, :destroy]
  before_action :is_admin, only: [:edit, :new, :update, :destroy]
  
  def index
    @blogs = Blog.paginate(page: params[:page], per_page: 10)
    @photos = ['kiadesk.jpg', 'kiacongress.jpg', "kiabag.jpg", "kiarunback.jpg"]
  end
  
  def show
    @photos = ['kiadesk.jpg', 'kiacongress.jpg', "kiabag.jpg", "kiarunback.jpg"]
  end
  
  def new
    @blog = Blog.new
  end
  
  def create
    @blog = Blog.new(blog_params)
    @blog.user = current_user
      if @blog.save
        flash[:success] = "Blog was succesfully created"
        redirect_to blog_path(@blog)
      else
        render 'new'
      end
  end
  
  def edit
    
  end
  
  def update
    if @blog.update(blog_params)
      @subscriber = Subscriber.first
      SubscribeMailer.sample_email(@subscriber).deliver
      flash[:success] = "Blog was succesfully updated"
      redirect_to blog_path(@blog)
    else
      render 'edit'
    end
  end
  
  def destroy
    @blog.destroy
    flash[:danger] = 'Blog was succesfully deleted'
    redirect_to blogs_path
  end
  
  private
  
  def blog_params 
    params.require(:blog).permit(:title, :description, :picture, category_ids: [])
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
      flash[:danger] = "You do not have the proper permissions to access this page"
      redirect_to root_path
    end
  end

end