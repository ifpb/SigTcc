class Usuario < ApplicationRecord
  belongs_to :user, polymorphic: true
end
