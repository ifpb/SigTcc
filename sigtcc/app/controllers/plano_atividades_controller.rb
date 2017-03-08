class PlanoAtividadesController < ApplicationController
  before_action :set_plano_atividade, only: [:show, :edit, :update, :destroy]

  # GET /plano_atividades
  # GET /plano_atividades.json
  def index
    @plano_atividades = PlanoAtividade.all
  end

  # GET /plano_atividades/1
  # GET /plano_atividades/1.json
  def show
  end

  # GET /plano_atividades/new
  def new
    @plano_atividade = PlanoAtividade.new
  end

  # GET /plano_atividades/1/edit
  def edit
  end

  # POST /plano_atividades
  # POST /plano_atividades.json
  def create
    @plano_atividade = PlanoAtividade.new()
    @plano_atividade.dataEntrega = params[:plano_atividade][:dataEntrega]
    @plano_atividade.tcc_id = params[:plano_atividade][:tcc_id]
    @plano_atividade.aprovacao = params[:aprovacao]

    respond_to do |format|
      if @plano_atividade.save
        format.html { redirect_to @plano_atividade, notice: 'Plano atividade was successfully created.' }
        format.json { render :show, status: :created, location: @plano_atividade }
      else
        format.html { render :new }
        format.json { render json: @plano_atividade.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /plano_atividades/1
  # PATCH/PUT /plano_atividades/1.json
  def update
    @plano_atividade.dataEntrega = params[:plano_atividade][:dataEntrega]
    @plano_atividade.tcc_id = params[:plano_atividade][:tcc_id]
    @plano_atividade.aprovacao = params[:aprovacao]
    respond_to do |format|
      if @plano_atividade.save
        format.html { redirect_to @plano_atividade, notice: 'Plano atividade was successfully updated.' }
        format.json { render :show, status: :ok, location: @plano_atividade }
      else
        format.html { render :edit }
        format.json { render json: @plano_atividade.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /plano_atividades/1
  # DELETE /plano_atividades/1.json
  def destroy
    @plano_atividade.destroy
    respond_to do |format|
      format.html { redirect_to plano_atividades_url, notice: 'Plano atividade was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_plano_atividade
      @plano_atividade = PlanoAtividade.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def plano_atividade_params
      params.fetch(:plano_atividade, {})
    end
end
