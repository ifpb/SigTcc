class AddProfessorToAtaDefesa < ActiveRecord::Migration[5.0]
  def change
    add_reference :ata_defesas, :professor, foreign_key: true
  end
end
