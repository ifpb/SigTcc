class ConsultasController < ApplicationController

  ###
  # Author: João Paulo Marques e Almeida
  ###

  #método para entrar na view de consulta
  def index
  end

  #métdo que realiza a consulta
  def consultar

    consulta = "usuarios.nome like ? and palavras.nome like ? "
    professor = "%"+params[:professor]+"%"
    palavra = "%"+params[:palavra]+"%"

    if !params[:semestre].empty?
      consulta += " and periodo = ?"

      @tccs = Tcc.joins(professor: :usuario).joins(:palavras).where(consulta, professor, palavra, params[:semestre])
    else


      @tccs = Tcc.joins(professor: :usuario).joins(:palavras).where(consulta, professor, palavra)


    end
    @tccs

    respond_to do |format|
      format.html{redirect_to consulta_path, notice: "Consulta retornou"}
      format.js

    end
  end

end
