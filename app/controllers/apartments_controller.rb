class ApartmentsController < ApplicationController
  def index
    apartments = Apartment.includes(:images, :type)

    # TODO: include images and type
    render json: { apartments: apartments }
  end
end
