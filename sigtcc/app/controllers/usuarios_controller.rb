class UsuariosController < ApplicationController

  def show
    @usuario = Usuario.find(params[:id])
    @tipo = ""

    flag = session[:perfil]
    if flag == 'true'

      @tipo = "Coordenador"
    else
      @tipo = @usuario.user.class.to_s
    end

  end

end
