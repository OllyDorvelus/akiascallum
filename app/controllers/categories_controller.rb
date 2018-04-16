class CategoriesController < ApplicationController
  before_action :set_category, only: [:show, :destroy]
  before_action :is_admin, only: [:new, :edit, :destroy, :update]
  def new
    @category = Category.new
  end
  
  def create
    @category = Category.new(category_params)
    if @category.save
      flash[:success] = "Category was created succesfully"
      redirect_to category_path(@category.name)
    else
      render 'new'
    end
  end
  
  def show
    @category_blogs = @category.blogs.paginate(page: params[:page], per_page: 5)
    @photos = ['kiadesk.jpg', 'kiacongress.jpg', "kiabag.jpg", "kiarunback.jpg"]
  end
  
  def index
    @categories = Category.paginate(page: params[:page], per_page: 5)
  end
  
  def edit
    @category = Category.find(params[:id])
  end
  
  def update
    @category = Category.find(params[:id])
      if @category.update(category_params)
        flash[:success] = "Category name was succesfully updated"
        redirect_to category_path(@category.name)
      else
        redirect_to root_path
      end
  end
  
  def destroy
    @category.destroy
    redirect_to categories_path
  end    
  
  private
  
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
  
  def category_params
    params.require(:category).permit(:name)
  end
  
  def set_category
    @category = Category.find_by(name: params[:name])
  end
  
end