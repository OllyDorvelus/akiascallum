# Preview all emails at http://localhost:3000/rails/mailers/subscribe_mailer
class SubscribeMailerPreview < ActionMailer::Preview
  
  def welcome_mail_preview
    SubscribeMailer.welcome_email(Subscriber.first)
  end
  
  def blog_mail_preview
    SubscribeMailer.blog_email(Subscriber.first, Blog.first)
  end
end
