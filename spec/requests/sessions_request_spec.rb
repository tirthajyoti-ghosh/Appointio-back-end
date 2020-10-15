require 'rails_helper'

RSpec.describe 'Sessions', type: :request do
  before :all do
    User.create(
      name: 'Testing User',
      email: 'testuser@testing.com',
      password: '000000',
      password_confirmation: '000000'
    )
  end

  describe 'GET /logged_in' do
    it 'returns logged_in: true if logged in' do
      post 'http://localhost:3000/login', params: { user: { email: 'testuser@testing.com', password: '000000' } }
      get 'http://localhost:3000/logged_in'

      expect(JSON[response.body]['logged_in']).to be true
    end

    it 'returns logged_in: false' do
      get 'http://localhost:3000/logged_in'
      expect(JSON[response.body]['logged_in']).to be false
    end

    it 'returns logged_in: false - falsy' do
      get 'http://localhost:3000/logged_in'

      expect(JSON[response.body]['logged_in']).not_to be true
    end
  end

  describe 'POST /login' do
    it 'returns user object when logged in' do
      post 'http://localhost:3000/login', params: { user: { email: 'testuser@testing.com', password: '000000' } }

      expect(JSON[response.body]['user']['email']).to eq('testuser@testing.com')
    end

    it 'returns error message for invalid user' do
      post 'http://localhost:3000/login', params: { user: { email: 'testuser@testing.com', password: '123000' } }

      expect(JSON[response.body]['message']).to eq('Invalid email/password')
    end
  end

  describe 'DELETE /logout' do
    it 'resets the current session and returns logged_out: true' do
      delete 'http://localhost:3000/logout'

      expect(JSON[response.body]['logged_out']).to be true
    end
  end
end
