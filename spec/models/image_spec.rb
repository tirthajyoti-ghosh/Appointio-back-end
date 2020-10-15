require 'rails_helper'

RSpec.describe Image, type: :model do
  describe 'associations' do
    it { should belong_to(:apartment) }
  end
end
