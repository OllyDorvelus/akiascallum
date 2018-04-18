class SubscribeMailer < ApplicationMailer
  default from: "blackace5445@gmail.com"
  
  
  def sample_email(subscriber)
    @subscriber = subscriber
    mail(to: @subscriber.email, subject: 'Sample email')
  end
end
