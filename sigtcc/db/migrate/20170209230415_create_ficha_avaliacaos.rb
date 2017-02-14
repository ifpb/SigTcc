class CreateFichaAvaliacaos < ActiveRecord::Migration[5.0]
  def change
    create_table :ficha_avaliacaos do |t|
      t.date :data
      t.references :professor, foreign_key: true

      t.timestamps
    end
  end
end
