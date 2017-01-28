class CreateJoinTableTccPalavra < ActiveRecord::Migration[5.0]
  def change
    create_join_table :tccs, :palavras do |t|
      t.index [:tcc_id, :palavra_id]
      # t.index [:palavra_id, :tcc_id]
    end
  end
end
