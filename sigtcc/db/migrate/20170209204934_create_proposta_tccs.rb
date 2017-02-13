class CreatePropostaTccs < ActiveRecord::Migration[5.0]
  def change
    create_table :proposta_tccs do |t|
      t.date :dataApresentacao
      t.boolean :aprovacao
      t.references :aluno, foreign_key: true

      t.timestamps
    end
  end
end
