class AtaDefesasController < ApplicationController
    before_action :set_ata_defesa, only: [ :create, :edit, :update, :destroy, :show]
  def new
    banca = Tcc.find(params[:tcc]).banca
    @ata_defesa = AtaDefesa.new(banca: banca)


  end

  def create
    tcc = Tcc.find(params[:tcc])
    @ata_defesa = AtaDefesa.new(banca: tcc.banca)
    if params[:nota].blank? || params[:status].blank?
      flash[:alert] = 'Todos os campos devem ser preenchidos!'
      render template: "ata_defesas/new"
      return ;
    end

    @ata_defesa.banca.tcc.nota = params[:nota]
    @ata_defesa.banca.tcc.status = params[:status]
    @ata_defesa.banca.tcc.save

    respond_to do |format|
      if @ata_defesa.update(ata_defesa_params)
        format.html { redirect_to current_user, notice: 'Ata Cadastrada com sucesso' }
      else
          format.html { render :new }
      end
    end

  end

  def edit


  end

  def destroy

    @ata_defesa.destroy
    respond_to do |format|

      format.html { redirect_to current_user, notice: 'Ata removida com sucesso' }

  end

  def index
  end

  def show


    end
  end


  def update
      print "Aqui uma ata de defesa valida no update #{@ata_defesa.data}"

    @ata_defesa.banca.tcc.nota = params[:nota]
    @ata_defesa.banca.tcc.status = params[:status]
    @ata_defesa.banca.tcc.save

    respond_to do |format|
      if @ata_defesa.update(ata_defesa_params)
        format.html { redirect_to current_user, notice: 'Ata Atualizada com sucesso' }
      else
          format.html { render :edit }
      end
    end

  end

  private
    # Use callbacks to share common setup or constraints between actions.

    def set_ata_defesa

      if !params[:tcc].nil?
      tcc = Tcc.find(params[:tcc])
      @ata_defesa = tcc.banca.ata_defesa
      else
        @ata_defesa = AtaDefesa.find(params[:id])
      end
    end

    def ata_defesa_params
      params.require(:ata_defesa).permit(:data, :arquivo)
    end
end
