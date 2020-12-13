class UsersController < ApplicationController
  include ProcessDataConcern

  # POST /register
  def create
    user = User.new(user_params)

    if user.save
      token = encode_token(process_user_data(user, true))
      render json: { token: token, user: process_user_data(user) }, status: :created
    else
      render json: { errors: user.errors.full_messages }
    end
  end

  # POST /login
  def login
    user = User.find_by(email: params[:user][:email])

    if user&.authenticate(params[:user][:password])
      token = encode_token(process_user_data(user, true))
      render json: { token: token, user: process_user_data(user) }
    else
      render json: { message: 'Invalid email/password' }, status: 422
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end
