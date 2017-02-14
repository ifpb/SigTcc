class CreateAtaDefesas < ActiveRecord::Migration[5.0]
  def change
    create_table :ata_defesas do |t|
      t.date :data
      t.references :banca, foreign_key: true

      t.timestamps
    end
  end
end
