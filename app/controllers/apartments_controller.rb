class ApartmentsController < ApplicationController
  include ProcessDataConcern

  def index
    apartments = Apartment.includes(:images, :type)

    render json: { apartments: process_apartments(apartments) }
  end

  def show
    apartment = Apartment.find(params[:id])

    render json: process_apartment_data(apartment)
  end
end
