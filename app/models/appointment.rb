class Appointment < ApplicationRecord
  belongs_to :user
  belongs_to :apartment

  validates :date, presence: true
  validates :user_id, presence: true
  validates :apartment_id, presence: true
end
