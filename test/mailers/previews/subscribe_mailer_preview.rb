# Preview all emails at http://localhost:3000/rails/mailers/subscribe_mailer
class SubscribeMailerPreview < ActionMailer::Preview
  def sample_mail_preview
    SubscribeMailer.sample_email(Subscriber.first)
  end
end
