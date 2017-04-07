class Usuario < ApplicationRecord
  belongs_to :user, polymorphic: true
  has_secure_password


  # validates :nome, presence: true, length: { maximum: 70 }
  # before_save { self.email = email.downcase }
  # validates :email, presence: true, format: {with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, on: :create}
  # validates :password, presence: true, length: { minimum: 6 }

end
