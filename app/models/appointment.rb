class Appointment < ApplicationRecord
  belongs_to :user
  belongs_to :apartment
end
