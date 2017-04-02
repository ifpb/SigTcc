class ConsultasBancaController < ApplicationController

  ###
  # Author: João Paulo Marques e Almeida
  ###

  #método para entrar na view de consulta
  def index
  end

  #métdo que realiza a consulta
  def consultar_banca


    if !params[:sala].empty?
      consulta = "sala = ?"
      @bancas = Banca.where(consulta, params[:sala])
    elsif !params[:dataApresentacao].empty?
      consulta = "dataApresentacao = ?"
      @bancas = Banca.where(consulta, params[:dataApresentacao])
    end


    #if !params[:semestre].empty?
      #consulta += " and periodo = ?"

      #@bancas = Banca.joins(professor: :usuario).joins(:palavras).where(consulta, professor, palavra, params[:semestre])
    #else


      #@bancas = Tcc.joins(professor: :usuario).joins(:palavras).where(consulta, professor, palavra)


    #end
    @bancas

    respond_to do |format|
      format.html{redirect_to consulta_path, notice: "Consulta retornou"}
      format.js

    end
  end

end
