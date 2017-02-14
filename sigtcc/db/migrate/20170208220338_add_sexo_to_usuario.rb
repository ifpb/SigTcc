class AddSexoToUsuario < ActiveRecord::Migration[5.0]
  def change
    add_column :usuarios, :sexo, :string
  end
end
