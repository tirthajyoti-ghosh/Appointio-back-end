require 'rails_helper'

RSpec.describe "Registrations", type: :request do
  describe 'POST api/users' do
    it 'creates user' do
      post 'http://localhost:3000/registrations',
           params:
            { user:
              { name: 'Testing User', email: 'testuser@testing.com', password: '000000', password_confirmation: '000000' }
            }
      expect(JSON[response.body]['user']['name']).to eq('Testing User')
    end

    it 'does not creates user if password confirmation does not match' do
      post 'http://localhost:3000/registrations',
           params:
            { user:
              { name: 'Testing User', email: 'testuser@testing.com', password: '000000', password_confirmation: 'nope' }
            }
      expect(JSON[response.body]['errors'].size).to eq(1)
    end
  end
end
