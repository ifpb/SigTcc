class CreatePalavras < ActiveRecord::Migration[5.0]
  def change
    create_table :palavras do |t|
      t.string :nome

      t.timestamps
    end
  end
end
