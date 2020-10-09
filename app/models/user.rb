class User < ApplicationRecord
  has_many :appointments
  
  has_secure_password

  validates :name, presence: true, length: {minimum: 2, maximum: 50}
  validates :email, presence: true, uniqueness: { case_sensitive: false }
  validates :password, presence: true, length: {minimum: 6}  

end
