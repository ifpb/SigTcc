class Professor < ApplicationRecord
  has_many :tccs
  has_one :usuario, as: :user
  has_many :coordenadors
  has_many :ficha_avaliacaos

  #validates_numericality_of :siape, message: 'deve ser um número'
  

 end
