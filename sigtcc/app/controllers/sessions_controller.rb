class SessionsController < ApplicationController
  def new

  end
  #Método para logar o usuário e iniciar a session
  def create
    usuario = Usuario.find_by(email: params[:session][:email])
    if usuario && usuario.authenticate(params[:session][:password])
      # Log the user in and redirect to the user's show page.

      log_in(usuario)
      flag = false

      if(usuario.user.instance_of? Professor)
        if(!usuario.user.coordenadors.empty?)

          usuario.user.coordenadors.each do |coord|
            if(coord.ativo == true)
              flag = true
            end
          end

          if flag == true
            redirect_to '/perfil'
          else
            redirect_to usuario
          end

        else
          redirect_to usuario
        end
      else

        redirect_to usuario
      end
    else
      # Create an error message.
       flash[:warning] = 'Senha/email inválido'
      render 'new'
    end
  end

  def destroy
    log_out
    render 'new'

  end

  def escolheperfil


  end

  def perfilescolhido
    perfil = params[:session][:perfil]
    log_coord(perfil)
  redirect_to current_user

  end

end
