class AddPropostaTccToTcc < ActiveRecord::Migration[5.0]
  def change
    add_reference :tccs, :proposta_tcc, foreign_key: true
  end
end
