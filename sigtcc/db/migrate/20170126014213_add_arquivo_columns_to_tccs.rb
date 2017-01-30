class AddArquivoColumnsToTccs < ActiveRecord::Migration[5.0]
  def up
    add_attachment :tccs, :arquivo
  end

  def down
    remove_attachment :tccs, :arquivo
  end
end
