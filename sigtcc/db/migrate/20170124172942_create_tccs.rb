class CreateTccs < ActiveRecord::Migration[5.0]
  def change
    create_table :tccs do |t|
      t.string :titulo
      t.string :periodo
      t.string :palavras_chaves, array: true
      t.string :tema
      t.column :tipo, :integer, default: 1
      t.belongs_to :aluno, index: true
      
      t.timestamps
    end
  end
end
