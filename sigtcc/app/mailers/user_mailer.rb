class UserMailer < ApplicationMailer
  default from: "notifications@example.com"

  def enviar_email(user)
    @usuario = user
    @url = 'http://www.gmail.com'
    mail(to: @usuario.email, subject: 'Bem vindo à página de email')

  end
end
