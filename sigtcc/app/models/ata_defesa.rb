class AtaDefesa < ApplicationRecord
  belongs_to :banca

  has_attached_file :arquivo, styles: {thumbnail: "60x60#"}
  validates_attachment :arquivo,  content_type: { content_type: "application/pdf" }

  validates :data,  presence: true
end
