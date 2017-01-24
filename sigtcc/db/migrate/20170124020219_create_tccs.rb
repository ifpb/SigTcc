class CreateTccs < ActiveRecord::Migration[5.0]
  def change
    create_table :tccs do |t|
      t.string :titulo
      t.string :periodo

      t.timestamps
    end
  end
end
