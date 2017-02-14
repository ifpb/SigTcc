class CreatePlanoAtividades < ActiveRecord::Migration[5.0]
  def change
    create_table :plano_atividades do |t|
      t.date :dataEntrega
      t.boolean :aprovacao
      t.references :tcc, foreign_key: true

      t.timestamps
    end
  end
end
