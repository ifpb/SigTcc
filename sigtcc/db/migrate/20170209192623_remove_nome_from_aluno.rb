class RemoveNomeFromAluno < ActiveRecord::Migration[5.0]
  def change
    remove_column :alunos, :nome, :string
    remove_column :alunos, :email, :string
  end
end
