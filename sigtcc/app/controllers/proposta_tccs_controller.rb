class PropostaTccsController < ApplicationController
  before_action :set_proposta_tcc, only: [:show, :edit, :update, :destroy]

  # GET /proposta_tccs
  # GET /proposta_tccs.json
  def index
    @proposta_tccs = PropostaTcc.all
  end

  # GET /proposta_tccs/1
  # GET /proposta_tccs/1.json
  def show
  end

  # GET /proposta_tccs/new
  def new
    @proposta_tcc = PropostaTcc.new
  end

  # GET /proposta_tccs/1/edit
  def edit
  end

  # POST /proposta_tccs
  # POST /proposta_tccs.json
  def create
    #@proposta_tcc = PropostaTcc.new(proposta_tcc_params)
    @proposta_tcc = PropostaTcc.new(proposta_tcc_params)
  #  @proposta_tcc.dataApresentacao = params[:proposta_tcc][:dataApresentacao]
    #@proposta_tcc.aluno_id = params[:proposta_tcc][:aluno_id]
  #  @proposta_tcc.aprovacao = params[:aprovacao]



    respond_to do |format|
      if @proposta_tcc.save
        format.html { redirect_to @proposta_tcc, notice: 'Proposta tcc was successfully created.' }
        format.json { render :show, status: :created, location: @proposta_tcc }
      else
        format.html { render :new }
        format.json { render json: @proposta_tcc.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /proposta_tccs/1
  # PATCH/PUT /proposta_tccs/1.json
  def update

    respond_to do |format|
      if @proposta_tcc.update(proposta_tcc_params)
        format.html { redirect_to @proposta_tcc, notice: 'Proposta tcc was successfully updated.' }
        format.json { render :show, status: :ok, location: @proposta_tcc }
      else
        format.html { render :edit }
        format.json { render json: @proposta_tcc.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /proposta_tccs/1
  # DELETE /proposta_tccs/1.json
  def destroy
    @proposta_tcc.destroy
    respond_to do |format|
      format.html { redirect_to proposta_tccs_url, notice: 'Proposta tcc was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_proposta_tcc
      @proposta_tcc = PropostaTcc.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def proposta_tcc_params
      params.fetch(:proposta_tcc, {})
      params.require(:proposta_tcc).permit(:dataApresentacao, :aprovacao, :arquivo, :aluno_id)
    end
end
