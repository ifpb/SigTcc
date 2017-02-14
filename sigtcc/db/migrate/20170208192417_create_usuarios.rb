class CreateUsuarios < ActiveRecord::Migration[5.0]
  def change
    create_table :usuarios do |t|
      t.string :email
      t.boolean :ativo
      t.string :nome
      t.references :user, polymorphic: true

      t.timestamps
    end
  end
end
