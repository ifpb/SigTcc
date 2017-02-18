class Usuario < ApplicationRecord
  belongs_to :user, polymorphic: true
  has_secure_password
end
