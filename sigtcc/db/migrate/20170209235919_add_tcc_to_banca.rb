class AddTccToBanca < ActiveRecord::Migration[5.0]
  def change
    add_reference :bancas, :tcc, foreign_key: true
  end
end
