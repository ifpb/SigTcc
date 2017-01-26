class TccsController < ApplicationController
  before_action :set_tcc, only: [:show, :edit, :update, :destroy]

  # GET /tccs
  # GET /tccs.json
  def index
    @tccs = Tcc.all
  end

  # GET /tccs/1
  # GET /tccs/1.json
  def show
  end

  # GET /tccs/new
  def new
    @tcc = Tcc.new
  end

  # GET /tccs/1/edit
  def edit
  end

  # POST /tccs
  # POST /tccs.json
  def create
    @tcc = Tcc.new(tcc_params)

    respond_to do |format|
      if @tcc.save
        format.html { redirect_to @tcc, notice: 'Tcc cadastrado com sucesso!' }
        format.json { render :show, status: :created, location: @tcc }
      else
        format.html { render :new }
        format.json { render json: @tcc.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tccs/1
  # PATCH/PUT /tccs/1.json
  def update
    respond_to do |format|
      if @tcc.update(tcc_params)
        format.html { redirect_to @tcc, notice: 'Tcc was successfully updated.' }
        format.json { render :show, status: :ok, location: @tcc }
      else
        format.html { render :edit }
        format.json { render json: @tcc.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tccs/1
  # DELETE /tccs/1.json
  def destroy
    @tcc.destroy
    respond_to do |format|
      format.html { redirect_to tccs_url, notice: 'Tcc was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tcc
      @tcc = Tcc.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tcc_params
      params.require(:tcc).permit(:titulo, :periodo)
    end
end
