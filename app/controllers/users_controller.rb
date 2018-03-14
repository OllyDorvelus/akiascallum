class UsersController < ApplicationController

  def login
    
  end
  
  private
  def user_params
    params.require(:user).permit(:username, :email, :password)
  end
end