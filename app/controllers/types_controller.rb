class TypesController < ApplicationController
  include ProcessDataConcern

  def index
    types = Type.all

    render json: { types: types }
  end

  def show
    apartments_by_type = Apartment.includes(:images).where(type_id: params[:id])

    render json: { apartments: process_apartments(apartments_by_type) }
  end
end
