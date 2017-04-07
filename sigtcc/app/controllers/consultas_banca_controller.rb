class ConsultasBancaController < ApplicationController

  ###
  # Author: João Paulo Marques e Almeida
  ###

  #método para entrar na view de consulta
  def index
  end

  #métdo que realiza a consulta
  def consultar_banca

    if !params[:buscaId].empty?
      if    params[:buscaId] == 'Sala'
        @bancas = Banca.where(sala: params[:termoBusca]).distinct
      elsif params[:buscaId] == 'Data Apresentação'
        @bancas = Banca.where(dataApresentacao: params[:termoBusca]).distinct
      end
    else
      @bancas = Banca.all
    end

    @bancas

    respond_to do |format|
      format.html{redirect_to consulta_path, notice: "Consulta retornou"}
      format.js

    end
  end

end
