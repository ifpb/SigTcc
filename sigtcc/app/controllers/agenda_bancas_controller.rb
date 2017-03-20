class AgendaBancasController < ApplicationController
  before_action :set_agenda_banca, only: [:show, :edit, :update, :destroy]

  # GET /agenda_bancas
  # GET /agenda_bancas.json
  def index
    @agenda_bancas = AgendaBanca.all
  end

  # GET /agenda_bancas/1
  # GET /agenda_bancas/1.json
  def show
  end

  # GET /agenda_bancas/new
  def new
    @agenda_banca = AgendaBanca.new
  end

  # GET /agenda_bancas/1/edit
  def edit
  end

  # POST /agenda_bancas
  # POST /agenda_bancas.json
  def create
    @agenda_banca = AgendaBanca.new(agenda_banca_params)

    respond_to do |format|
      if @agenda_banca.save
        format.html { redirect_to @agenda_banca, notice: 'Agenda banca was successfully created.' }
        format.json { render :show, status: :created, location: @agenda_banca }
      else
        format.html { render :new }
        format.json { render json: @agenda_banca.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /agenda_bancas/1
  # PATCH/PUT /agenda_bancas/1.json
  def update
    respond_to do |format|
      if @agenda_banca.update(agenda_banca_params)
        format.html { redirect_to @agenda_banca, notice: 'Agenda banca was successfully updated.' }
        format.json { render :show, status: :ok, location: @agenda_banca }
      else
        format.html { render :edit }
        format.json { render json: @agenda_banca.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /agenda_bancas/1
  # DELETE /agenda_bancas/1.json
  def destroy
    @agenda_banca.destroy
    respond_to do |format|
      format.html { redirect_to agenda_bancas_url, notice: 'Agenda banca was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_agenda_banca
      @agenda_banca = AgendaBanca.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def agenda_banca_params
      params.require(:agenda_banca).permit(:data, :hora)
    end
end
