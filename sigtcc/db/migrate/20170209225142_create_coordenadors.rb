class CreateCoordenadors < ActiveRecord::Migration[5.0]
  def change
    create_table :coordenadors do |t|
      t.date :dataInicio
      t.date :dataFim
      t.string :portaria
      t.boolean :ativo
      t.references :professor, foreign_key: true

      t.timestamps
    end
  end
end
