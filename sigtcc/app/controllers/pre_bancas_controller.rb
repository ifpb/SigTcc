class PreBancasController < ApplicationController
  before_action :set_pre_banca, only: [:show, :edit, :update, :destroy]

  # GET /pre_bancas
  # GET /pre_bancas.json
  def index
    @pre_bancas = PreBanca.all.paginate :page => params[:page], :per_page => 5
  end

  def abrirPesquisa
  end

  def consultar
    if !params[:buscaId].empty?
      if    params[:buscaId] == 'Aluno'
        @pre_bancas = PreBanca.joins(proposta_tcc: {aluno: :usuario }).where("usuarios.nome like ?", "%"+params[:termoBusca]+"%").distinct
      elsif params[:buscaId] == 'Orientador'
        @pre_bancas = PreBanca.joins(proposta_tcc: [tcc: {professor:  :usuario}]).where("usuarios.nome like ?", "%"+params[:termoBusca]+"%").distinct
      elsif params[:buscaId] == 'Período'
        @pre_bancas = PreBanca.joins(proposta_tcc: :tcc).where("tccs.periodo like ?", "%"+params[:termoBusca]+"%").distinct
      elsif params[:buscaId] == 'Data Apresentação'
        @pre_bancas = PreBanca.where("pre_bancas.dataApresentacao like ?", "%"+params[:termoBusca]+"%").distinct
      end
    else
      @pre_bancas = PreBanca.all
    end
    @pre_bancas = @pre_bancas
    respond_to do |format|
      format.html{redirect_to pre_bancas_path}
      format.js
    end
  end

  # GET /pre_bancas/1
  # GET /pre_bancas/1.json
  def show
  end

  # GET /pre_bancas/new
  def new
    @pre_banca = PreBanca.new
  end

  # GET /pre_bancas/1/edit
  def edit

  end

  # POST /pre_bancas
  # POST /pre_bancas.json
  def create
    @pre_banca = PreBanca.new
    @pre_banca.dataApresentacao = params[:pre_banca][:dataApresentacao]
    @pre_banca.proposta_tcc_id = params[:pre_banca][:proposta_tcc_id]
    @pre_banca.horario = params[:pre_banca][:horario]
    @pre_banca.sala = params[:pre_banca][:sala]

    respond_to do |format|
      if @pre_banca.save
        format.html { redirect_to @pre_banca, notice: 'Pré banca cadastrada com sucesso.' }
        format.json { render :show, status: :created, location: @pre_banca }
      else
        format.html { render :new }
        format.json { render json: @pre_banca.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pre_bancas/1
  # PATCH/PUT /pre_bancas/1.json
  def update
    respond_to do |format|
      if @pre_banca.update(pre_banca_params)
        format.html { redirect_to @pre_banca, notice: 'Pré banca editada com sucesso!' }
        format.json { render :show, status: :ok, location: @pre_banca }
      else
        format.html { render :edit }
        format.json { render json: @pre_banca.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pre_bancas/1
  # DELETE /pre_bancas/1.json
  def destroy
    @pre_banca.destroy
    respond_to do |format|
      format.html { redirect_to pre_bancas_url, notice: 'Pre banca was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pre_banca
      @pre_banca = PreBanca.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pre_banca_params
      params.require(:pre_banca).permit(:sala, :dataApresentacao, :horario, :proposta_tcc_id)
    end
end
