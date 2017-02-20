class RemoveAlunoFromTcc < ActiveRecord::Migration[5.0]
  def change
    remove_reference :tccs, :aluno, foreign_key: true
  end
end
