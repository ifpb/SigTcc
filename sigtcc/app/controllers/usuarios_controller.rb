class UsuariosController < ApplicationController

  ###
  # Author: João Paulo Marques e Almeida
  ###

  # método para setar o usuário logado
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

  # método para listar professores com perfil para orientacao
  def index

    @professores = Professor.joins(:tccs).distinct
    @professors
    respond_to do |format|
      format.html{redirect_to usuario_path(current_user), action: "show", notice: "Resultado"}
      format.js

    end
  end

end
