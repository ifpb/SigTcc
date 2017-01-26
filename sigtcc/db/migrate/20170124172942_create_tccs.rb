class CreateTccs < ActiveRecord::Migration[5.0]
  def change
    create_table :tccs do |t|
      t.string :titulo
      t.string :periodo
      t.string :tema
      t.column :tipo, :integer, default: 1
      t.belongs_to :aluno, index: true
      t.belongs_to :professor, index: true
      t.timestamps
    end
  end
end
