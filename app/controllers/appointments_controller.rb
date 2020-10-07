class AppointmentsController < ApplicationController
  include CurrentUserConcern
  include ProcessDataConcern

  before_action :validate_login

  def index
    appointments = Appointment.includes(:apartment).where(user_id: @current_user.id)

    render json: { appointments: process_appointments(appointments) }
  end

  def create
    appointment = Appointment.new(
      date: params[:appointment][:date],
      apartment_id: params[:appointment][:apartment_id],
      user_id: @current_user.id
    )

    if appointment.save
      render json: { status: 'Success' }, status: :created
    else
      render json: { message: 'Server error. Try again.' }, status: 500
    end  
  end

  private

  def validate_login
    unless @current_user
      render json: { status: 'Unauthorized', message: 'You need to login first.' }, status: 401
    end
  end
end
