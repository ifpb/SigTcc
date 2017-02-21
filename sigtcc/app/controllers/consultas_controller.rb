class ConsultasController < ApplicationController

  def index
  end


  def consultar
    consulta = "nome like ?"
    professor = "%"+params[:professor]+"%"
    if !params[:semestre].empty?
      consulta += " and periodo = ?"

      @tccs = Tcc.joins(professor: :usuario).where(consulta, professor, params[:semestre])
    else


      @tccs = Tcc.joins(professor: :usuario).where(consulta, professor)
    end

  end
end
