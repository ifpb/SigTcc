class CreateProposta < ActiveRecord::Migration[5.0]
  def change
    create_table :proposta do |t|
      t.string :titulo
      t.string :tipoTcc
      t.string :orientador

      t.timestamps
    end
  end
end
