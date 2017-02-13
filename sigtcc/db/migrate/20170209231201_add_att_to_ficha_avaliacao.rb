class AddAttToFichaAvaliacao < ActiveRecord::Migration[5.0]
  def change
    add_reference :ficha_avaliacaos, :banca, foreign_key: true
  end
end
