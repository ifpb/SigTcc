class ProfessorsController < ApplicationController
  before_action :set_professor, only: [:show, :edit, :update, :destroy]

  # GET /professores
  # GET /professors.json
  def index
    @professors = Professor.all
  end

  # GET /professors/1
  # GET /professor/1.json
  def show
  end

  # GET /professors/new
  def new
    @professor = Professor.new
    @usuario = Usuario.new
    @professor.usuario = @usuario
  end

  # GET /professors/1/edit
  def edit
    @usuario = @professor.usuario
  end

  # POST /professors
  # POST /professors.json
  def create
    @usuario = Usuario.new()
    @usuario.email = params[:usuario][:email]
    @usuario.nome = params[:usuario][:nome]
    @usuario.sexo = params[:usuario][:sexo]
    @usuario.password = params[:usuario][:password]
    @usuario.password_confirmation = params[:usuario][:password_confirmation]
    
    @professor = Professor.new()
    @professor.siape = params[:professor][:siape]
    @professor.usuario = @usuario
    
    respond_to do |format|
      if @professor.save
        format.html { redirect_to @professor, notice: 'Professor cadastrado com sucesso.' }
        format.json { render :show, status: :created, location: @professor }
      else
        format.html { render :new }
        format.json { render json: @professor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /professors/1
  # PATCH/PUT /professors/1.json
  def update
    @usuario = Usuario.find_by(email:params[:usuario][:email])
    @usuario.email = params[:usuario][:email]
    @usuario.nome = params[:usuario][:nome]
    @usuario.sexo = params[:usuario][:sexo]
    @usuario.password = params[:usuario][:password]
    @usuario.password_confirmation = params[:usuario][:password_confirmation]
    @usuario.save
    @professor.siape = params[:professor][:siape]
    @professor.usuario = @usuario
    @professor.save

    respond_to do |format|
      if @professor.save
        format.html { redirect_to @professor, notice: 'Professor atualizado com sucesso' }
        format.json { render :show, status: :ok, location: @professor }
      else
        format.html { render :edit }
        format.json { render json: @professor.errors, status: :unprocessable_entity }
      end
    end
  end


  def destroy
    @professor.destroy
    respond_to do |format|
      format.html { redirect_to professors_url, notice: 'Professor excluído com sucesso' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_professor
      @professor = Professor.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def professor_params
      params.fetch(:professor, {}, :usuario)
    end
end
