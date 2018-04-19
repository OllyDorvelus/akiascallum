class SubscribersController < ApplicationController
  
  def new
    @subscriber = Subscriber.new
  end
  
  def create
    @subscriber = Subscriber.new(subscriber_params)
      if @subscriber.save
        flash[:success] = "Thank you #{@subscriber.name} for subscribing"
        SubscribeMailer.welcome_email(@subscriber).deliver
        redirect_to home_path
      else
        render 'new'
      end
  end
  
  private
  
  def subscriber_params
    params.require(:subscriber).permit(:name, :email)
  end
end