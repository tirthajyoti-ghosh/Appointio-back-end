require 'rails_helper'

RSpec.describe Appointment, type: :model do
  describe 'associations' do
    it { should belong_to(:user) }
    it { should belong_to(:apartment) }
  end
  
  describe 'validations' do
    it { should validate_presence_of(:date) }

    it { should validate_presence_of(:user_id) }

    it { should validate_presence_of(:apartment_id) }
  end
end
