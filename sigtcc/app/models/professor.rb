class Professor < ApplicationRecord
  has_many :tccs
  has_one :usuario, as: :user
  has_many :coordenadors
  has_many :ficha_avaliacaos

<<<<<<< HEAD
  #validates_numericality_of :siape, message: 'deve ser um número'
  

 end
=======
  has_and_belongs_to_many :bancas

end
>>>>>>> a307bb236fd3ce568d5190423594153962cf539b
