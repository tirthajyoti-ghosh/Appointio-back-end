class AppointmentsController < ApplicationController
  include CurrentUserConcern
  include ProcessDataConcern

  before_action :validate_login

  def index
    appointments = Appointment.includes(:apartment).where(user_id: @current_user.id)

    render json: { appointments: process_appointments(appointments) }
  end

  private

  def validate_login
    unless @current_user
      render json: { status: 'Unauthorized', message: 'You need to login first.' }, status: 401
    end
  end
end
