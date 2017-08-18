class UserMailer < ApplicationMailer
  default from: "ga3mactep@yandex.ru"
 
  def welcome_email(message)
    @message = message
    @url  = 'http://ga3mactep@yandex.ru'
    mail(to: 'mr.nikolay1983@mail.ru', subject: 'GA3MACTEP message')
  end
end
