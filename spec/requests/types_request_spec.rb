require 'rails_helper'

RSpec.describe 'Types', type: :request do
  before :all do
    Type.create(name: 'loft')
    Type.create(name: 'studio')
    Type.create(name: 'micro')

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

  describe 'GET /types' do
    it 'returns all types in an array' do
      get 'http://localhost:3000/types'

      expect(JSON[response.body]['types'].size).to be(3)
    end
  end

  describe 'GET /types/:id' do
    it 'returns all apartments of the given type(id) in an array' do
      get "http://localhost:3000/types/#{Type.first.id}"

      expect(JSON[response.body]['apartments'].size).to be(2)
    end
  end
end
