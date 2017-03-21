class AlunosController < ApplicationController
  before_action :set_aluno, only: [:show, :edit, :update, :destroy]

  # GET /alunos
  # GET /alunos.json
  def index
    @alunos = Aluno.all
  end

  # GET /alunos/1
  # GET /alunos/1.json
  def show
  end

  # GET /alunos/new
  def new
    @aluno = Aluno.new
    @usuario = Usuario.new
    @aluno.usuario = @usuario
  end

  # GET /alunos/1/edit
  def edit
    @usuario = @aluno.usuario
  end

  # POST /alunos
  # POST /alunos.json
  def create
    @usuario = Usuario.new()
    @usuario.email = params[:usuario][:email]
    @usuario.nome = params[:usuario][:nome]
    @usuario.sexo = params[:usuario][:sexo]
    @usuario.password = params[:usuario][:password]
    @usuario.password_confirmation = params[:usuario][:password_confirmation]
    
    @aluno = Aluno.new()
    @aluno.matricula = params[:aluno][:matricula]
    @aluno.usuario = @usuario
    
    respond_to do |format|
      if @aluno.save
        format.html { redirect_to @aluno, notice: 'Aluno cadastrado com sucesso.' }
        format.json { render :show, status: :created, location: @aluno }
      else
        format.html { render :new }
        format.json { render json: @aluno.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /alunos/1
  # PATCH/PUT /alunos/1.json
  def update
    @usuario = Usuario.find_by(email:params[:usuario][:email])
    @usuario.email = params[:usuario][:email]
    @usuario.nome = params[:usuario][:nome]
    @usuario.sexo = params[:usuario][:sexo]
    @usuario.password = params[:usuario][:password]
    @usuario.password_confirmation = params[:usuario][:password_confirmation]
    @usuario.save
    @aluno.matricula = params[:aluno][:matricula]
    @aluno.usuario = @usuario
    @aluno.save

    respond_to do |format|
      if @aluno.save
        format.html { redirect_to @aluno, notice: 'Aluno atualizado com sucesso' }
        format.json { render :show, status: :ok, location: @aluno }
      else
        format.html { render :edit }
        format.json { render json: @aluno.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /alunos/1
  # DELETE /alunos/1.json
  def destroy
    @aluno.destroy
    respond_to do |format|
      format.html { redirect_to alunos_url, notice: 'Aluno excluido com sucesso' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_aluno
      @aluno = Aluno.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def aluno_params
      params.fetch(:aluno, {}, :usuario)
    end
end
