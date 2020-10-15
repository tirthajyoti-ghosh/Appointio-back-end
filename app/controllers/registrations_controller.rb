class RegistrationsController < ApplicationController
  def create
    user = User.new(
      name: params[:user][:name],
      email: params[:user][:email],
      password: params[:user][:password],
      password_confirmation: params[:user][:password_confirmation]
    )

    if user.save
      session[:user_id] = user.id
      render json: { status: 'created', user: { id: user.id, name: user.name, email: user.email } }, status: :created
    else
      render json: { errors: user.errors.full_messages }
    end
  end
end
