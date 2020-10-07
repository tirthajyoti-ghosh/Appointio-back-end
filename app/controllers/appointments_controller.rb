class AppointmentsController < ApplicationController
  include CurrentUserConcern
  include ProcessDataConcern

  before_action :set_current_user

  def index
    appointments = Appointment.includes(:apartment).where(user_id: @current_user.id)

    render json: { appointments: process_appointments(appointments) }
  end
end
