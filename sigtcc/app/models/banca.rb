class Banca < ApplicationRecord
  has_and_belongs_to_many :professors
  has_many :ficha_avaliacaos
  has_one :ata_defesa

  belongs_to :tcc
end
