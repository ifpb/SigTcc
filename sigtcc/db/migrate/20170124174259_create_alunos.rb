class CreateAlunos < ActiveRecord::Migration[5.0]
  def change
    create_table :alunos do |t|
      t.string :matricula
      t.string :nome
      t.string :email
      t.string :sexo

      t.timestamps
    end
  end
end
