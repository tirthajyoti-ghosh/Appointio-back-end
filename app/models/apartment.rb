class Apartment < ApplicationRecord
  has_many :appointments
  has_many :images
  
  belongs_to :type
end
