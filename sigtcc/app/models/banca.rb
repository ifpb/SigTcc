class Banca < ApplicationRecord
  has_many :professors
  has_many :ficha_avaliacaos
  has_one :ata_defesa

  belongs_to :tcc
end
