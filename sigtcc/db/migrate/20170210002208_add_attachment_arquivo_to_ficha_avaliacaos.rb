class AddAttachmentArquivoToFichaAvaliacaos < ActiveRecord::Migration
  def self.up
    change_table :ficha_avaliacaos do |t|
      t.attachment :arquivo
    end
  end

  def self.down
    remove_attachment :ficha_avaliacaos, :arquivo
  end
end
