class CreateBancas < ActiveRecord::Migration[5.0]
  def change
    create_table :bancas do |t|
      t.date :dataApresentacao
      t.string :horario
      t.string :sala

      t.timestamps
    end
  end
end
