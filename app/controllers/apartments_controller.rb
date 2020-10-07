class ApartmentsController < ApplicationController
  include ProcessDataConcern

  def index
    apartments = Apartment.includes(:images, :type)

    render json: { apartments: process_apartments(apartments) }
  end
end
