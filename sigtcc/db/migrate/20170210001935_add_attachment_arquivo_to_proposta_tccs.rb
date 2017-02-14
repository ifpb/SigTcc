class AddAttachmentArquivoToPropostaTccs < ActiveRecord::Migration
  def self.up
    change_table :proposta_tccs do |t|
      t.attachment :arquivo
    end
  end

  def self.down
    remove_attachment :proposta_tccs, :arquivo
  end
end
