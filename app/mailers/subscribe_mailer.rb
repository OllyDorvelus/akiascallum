class SubscribeMailer < ApplicationMailer
  default from: "akia@akiascallum.com"
  
  def welcome_email(subscriber)
    @subscriber = subscriber
    mail(to: @subscriber.email, subject: 'Thank you for subscrining to Akia\'s Blog!')
  end
  
  def blog_email(subscriber, blog)
    @subscriber = subscriber
    @blog = blog
    mail(to: @subscriber.email, subject: "Check out Akia's new blog post- #{@blog.title}")
  end
  
end
