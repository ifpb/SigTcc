class Professor < ApplicationRecord
  has_many :tccs
  has_one :usuario, as: :user
  has_many :coordenadors
  has_many :ficha_avaliacaos

  has_and_belongs_to_many :bancas

end
