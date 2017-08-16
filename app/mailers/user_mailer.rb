class UserMailer < ApplicationMailer
  default from: "ga3mactep@yandex.ru"
 
  def welcome_email(message)
    @message = message
    @url  = 'http://ga3mactep@yandex.ru'
    mail(to: 'ss48.a@yandex.ru', subject: 'GA3MACTEP message')
  end
end
