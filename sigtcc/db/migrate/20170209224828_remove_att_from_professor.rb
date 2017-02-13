class RemoveAttFromProfessor < ActiveRecord::Migration[5.0]
  def change
    remove_column :professors, :nome, :string
    remove_column :professors, :email, :string
  end
end
