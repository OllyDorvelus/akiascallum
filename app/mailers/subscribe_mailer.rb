class SubscribeMailer < ApplicationMailer
  default from: "akia@akiascallum.com"
  
  
  def sample_email(subscriber)
    @subscriber = subscriber
    mail(to: @subscriber.email, subject: 'Sample email')
  end
end
