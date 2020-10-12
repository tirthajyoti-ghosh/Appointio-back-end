require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'associations' do
    it { should have_many(:appointments) }
  end

  describe 'has_secure_password' do
    it { should have_secure_password }
  end

  describe 'validations' do
    it { should validate_presence_of(:name) }
    it { should validate_length_of(:name).is_at_least(2).is_at_most(50) }

    it { should validate_presence_of(:password) }
    it { should validate_length_of(:password).is_at_least(6) }

    it { should validate_presence_of(:email) }
    it { should validate_uniqueness_of(:email).case_insensitive }
  end
end
