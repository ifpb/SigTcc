class ConsultasBancaController < ApplicationController

  ###
  # Author: João Paulo Marques e Almeida
  ###

  #método para entrar na view de consulta
  def index
  end

  #métdo que realiza a consulta
  def consultar_banca

    #consulta = "usuarios.nome like ? and palavras.nome like ? "
    #professor = "%"+params[:professor]+"%"
    #palavra = "%"+params[:palavra]+"%"
    consulta = "sala = ? "
    sala = params[:sala]
    @bancas = Banca.where(consulta, sala)

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
