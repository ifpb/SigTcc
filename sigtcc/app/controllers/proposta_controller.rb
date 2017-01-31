class PropostaController < ApplicationController
  before_action :set_propostum, only: [:show, :edit, :update, :destroy]

  # GET /proposta
  # GET /proposta.json
  def index
    @proposta = Propostum.all
  end

  # GET /proposta/1
  # GET /proposta/1.json
  def show
  end

  # GET /proposta/new
  def new
    @propostum = Propostum.new
  end

  # GET /proposta/1/edit
  def edit
  end

  # POST /proposta
  # POST /proposta.json
  def create
    @propostum = Propostum.new(propostum_params)

    respond_to do |format|
      if @propostum.save
        format.html { redirect_to @propostum, notice: 'Propostum was successfully created.' }
        format.json { render :show, status: :created, location: @propostum }
      else
        format.html { render :new }
        format.json { render json: @propostum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /proposta/1
  # PATCH/PUT /proposta/1.json
  def update
    respond_to do |format|
      if @propostum.update(propostum_params)
        format.html { redirect_to @propostum, notice: 'Propostum was successfully updated.' }
        format.json { render :show, status: :ok, location: @propostum }
      else
        format.html { render :edit }
        format.json { render json: @propostum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /proposta/1
  # DELETE /proposta/1.json
  def destroy
    @propostum.destroy
    respond_to do |format|
      format.html { redirect_to proposta_url, notice: 'Propostum was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_propostum
      @propostum = Propostum.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def propostum_params
      params.require(:propostum).permit(:titulo, :tipoTcc, :orientador)
    end
end
