# Preview all emails at http://localhost:3000/rails/mailers/user_mailer
class UserMailerPreview < ActionMailer::Preview
  def enviar_email
    UserMailer.enviar_email(Usuario.first)
  end

end
