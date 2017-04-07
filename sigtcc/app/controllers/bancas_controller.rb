class BancasController < ApplicationController
  before_action :set_banca, only: [:show, :edit, :update, :destroy]

  # GET /bancas
  # GET /bancas.json
  def index
    @bancas = Banca.all.paginate :page => params[:page], :per_page => 5
  end

  # GET /bancas/1
  # GET /bancas/1.json
  def show
  end

  # GET /bancas/new
  def new
    @banca = Banca.new
  end

  # GET /bancas/1/edit
  def edit
  end

  # POST /bancas
  # POST /bancas.json
  def create
    @banca = Banca.new()
    @banca.dataApresentacao = params[:banca][:dataApresentacao]
    @banca.tcc_id = params[:banca][:tcc_id]
    @banca.horario = params[:banca][:horario]

    respond_to do |format|
      if @banca.save
        format.html { redirect_to @banca, notice: 'Banca foi criada com sucesso.' }
        format.json { render :show, status: :created, location: @banca }
      else
        format.html { render :new }
        format.json { render json: @banca.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bancas/1
  # PATCH/PUT /bancas/1.json
  def update
    respond_to do |format|
      if @banca.update(banca_params)
        format.html { redirect_to @banca, notice: 'Banca foi atualizada com sucesso.' }
        format.json { render :show, status: :ok, location: @banca }
      else
        format.html { render :edit }
        format.json { render json: @banca.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bancas/1
  # DELETE /bancas/1.json
  def destroy
    @banca.destroy
    respond_to do |format|
      format.html { redirect_to bancas_url, notice: 'Banca foi apagada com sucesso.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_banca
      @banca = Banca.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def banca_params
      params.fetch(:banca, {})
    end
end
