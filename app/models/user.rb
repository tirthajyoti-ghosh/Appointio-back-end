class User < ApplicationRecord
  has_many :appointments
  
  has_secure_password

  validates :name, presence: true, uniqueness: { case_sensitive: false }, length: {minimum: 2, maximum: 50}
  validates :email, presence: true

end
