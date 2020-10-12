require 'rails_helper'

RSpec.describe "Appointments", type: :request do
  before :all do
    User.create(
      name: 'Testing User',
      email: 'testuser@testing.com',
      password: '000000',
      password_confirmation: '000000'
    )

    Type.create(name: 'loft')

    Apartment.create(address: '11th Street', rent: '3820', reviews: 4.5, amenities: 'wifi, parking', deposit: '5800', sq_ft: '800', lease_length: '24 months', type_id: Type.first.id)
    Apartment.create(address: '234th Street', rent: '544', reviews: 4.6, amenities: 'wifi, parking, security', deposit: '5300', sq_ft: '300', lease_length: '34 months', type_id: Type.first.id)

    Appointment.create(date: '2020-10-20 13:40:00', user_id: User.first.id, apartment_id: Apartment.first.id)
    Appointment.create(date: '2020-10-20 13:40:00', user_id: User.first.id, apartment_id: Apartment.last.id)
  end
  
  describe 'GET /appointments' do
    it 'returns all appointments in an array' do
      post 'http://localhost:3000/login', params: { user: { email: 'testuser@testing.com', password: '000000' } }
      get 'http://localhost:3000/appointments'
      
      expect(JSON[response.body]['appointments'].size).to be(2)
    end
  end
  
  describe 'POST /appointments' do
    it 'returns success message when appointment created' do
      post 'http://localhost:3000/login', params: { user: { email: 'testuser@testing.com', password: '000000' } }
      post 'http://localhost:3000/appointments', params: { appointment: { date: '2020-10-23 23:50:00', apartment_id: Apartment.last.id } }

      expect(JSON[response.body]['message']).to eq('Appointment created!')
    end
  end
  
  describe 'DELETE /appointments/:id' do
    it 'returns success message when appointment created' do
      post 'http://localhost:3000/login', params: { user: { email: 'testuser@testing.com', password: '000000' } }
      delete "http://localhost:3000/appointments/#{Appointment.last.id}"
      
      expect(JSON[response.body]['message']).to eq('Appointment deleted!')
    end
  end
end
