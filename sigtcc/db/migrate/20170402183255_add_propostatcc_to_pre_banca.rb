class AddPropostatccToPreBanca < ActiveRecord::Migration[5.0]
  def change
    add_reference :pre_bancas, :proposta_tcc, foreign_key: true
  end
end
