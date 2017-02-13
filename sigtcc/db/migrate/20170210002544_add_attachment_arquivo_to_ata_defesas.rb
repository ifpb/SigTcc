class AddAttachmentArquivoToAtaDefesas < ActiveRecord::Migration
  def self.up
    change_table :ata_defesas do |t|
      t.attachment :arquivo
    end
  end

  def self.down
    remove_attachment :ata_defesas, :arquivo
  end
end
