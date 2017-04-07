class PropostaTcc < ApplicationRecord
  belongs_to :aluno
  has_one :tcc
  has_one :pre_banca
  has_attached_file :arquivo, styles: {thumbnail: "60x60#"}
  validates_attachment :arquivo, content_type: { content_type: "application/pdf" }
end
