class Aluno < ApplicationRecord
has_one :usuario, as: :user
has_one :proposta_tcc
end
