class TccsController < ApplicationController
  before_action :set_tcc, only: [:show, :edit, :update, :destroy]

  # GET /tccs
  # GET /tccs.json
  def index
    #@tccs = Tcc.all
    @tccs = Tcc.all.paginate :page => params[:page], :per_page => 5
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
    if @tcc.agendad
      flash[:alert] = 'Tcc não pode ser editado devido ao angendamento ter sido realizado!'
      redirect_to tccs_url
    end
  end

  # POST /tccs
  # POST /tccs.json
  def create
    @tcc = Tcc.new(tcc_params)
    @tcc.aluno = Aluno.create()
    @tcc.professor = Professor.create()
    @tcc.agendad = params[:agendado]

      params[:palavras].each { |palavra|
        if palavra.blank?
          flash[:alert] = 'Preencha todas as palavras-chaves!'
          render template: "tccs/new"
          return ;
        end
        palavra_bd  = Palavra.find_or_create_by(nome: palavra)
        @tcc.palavras << palavra_bd
      }

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
              format.html { redirect_to @tcc, notice: 'Tcc Atualizado com sucesso' }
              format.json { render :show, status: :ok, location: @tcc.palavras }
          else
            format.html { render :edit }
            format.json { render json: @tcc.errors, status: :unprocessable_entity }
          end
      end
  end

  # DELETE /tccs/1
  # DELETE /tccs/1.json
  def destroy
    if ! @tcc.agendad
      @tcc.destroy
      respond_to do |format|
        format.html { redirect_to tccs_url, notice: 'Tcc removido com sucesso!.' }
        format.json { head :no_content }
      end
    else
      flash[:alert] = 'Tcc não pode ser removido devido ao angendamento ter sido realizado!'
      redirect_to tccs_url
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tcc
      @tcc = Tcc.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tcc_params
      params.require(:tcc).permit(:titulo, :periodo, :arquivo, :tema, :tipos)
    end

    def palavras_params
      params.require(:tcc).permit(:palavra => [:nome])
    end
end
