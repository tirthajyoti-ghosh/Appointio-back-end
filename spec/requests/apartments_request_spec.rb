require 'rails_helper'

RSpec.describe 'Apartments', type: :request do
  before :all do
    Type.create(name: 'loft')

    Apartment.create(
      address: '11th Street',
      rent: '3820',
      reviews: 4.5,
      amenities: 'wifi, parking',
      deposit: '5800', sq_ft: '800',
      lease_length: '24 months',
      type_id: Type.first.id
    )
    Apartment.create(
      address: '234th Street',
      rent: '544',
      reviews: 4.6,
      amenities: 'wifi, parking, security',
      deposit: '5300',
      sq_ft: '300',
      lease_length: '34 months',
      type_id: Type.first.id
    )
  end

  after :all do
    Apartment.destroy_all
    Type.destroy_all
  end

  describe 'GET /apartments' do
    it 'returns all apartments in an array' do
      get 'http://localhost:3000/apartments'

      expect(JSON[response.body]['apartments'].size).to be(2)
    end
  end

  describe 'GET /apartments/:id' do
    it 'returns the single apartment object with the given id' do
      get "http://localhost:3000/apartments/#{Apartment.last.id}"

      expect(JSON[response.body]['address']).to eq('234th Street')
    end
  end
end
