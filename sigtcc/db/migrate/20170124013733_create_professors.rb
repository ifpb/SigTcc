class CreateProfessors < ActiveRecord::Migration[5.0]
  def change
    create_table :professors do |t|
      t.string :nome
      t.string :siape
      t.string :email
      t.belongs_to :tcc, index: true

      t.timestamps
    end
  end
end
