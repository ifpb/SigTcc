class AddArquivoToPlanoAtividades < ActiveRecord::Migration[5.0]
  def change
    add_column :plano_atividades, :arquivo, :string
  end
end
