class RemoveProfessorFromAtaDefesa < ActiveRecord::Migration[5.0]
  def change
    remove_reference :ata_defesas, :professor, foreign_key: true
  end
end
