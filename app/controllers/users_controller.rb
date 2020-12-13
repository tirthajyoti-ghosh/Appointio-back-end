class UsersController < ApplicationController
  
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

  # POST /login
  def create
    user = User
      .find_by(email: params[:user][:email])
      .try(:authenticate, params[:user][:password])

    if user
      session[:user_id] = user.id

      render json: {
        logged_in: true,
        user: {
          id: user.id,
          name: user.name,
          email: user.email
        }
      }, status: :created
    else
      render json: { message: 'Invalid email/password' }, status: 422
    end
  end

  # GET /logged_in
  def logged_in
    if @current_user
      render json: {
        logged_in: true,
        user: {
          id: @current_user.id,
          name: @current_user.name,
          email: @current_user.email
        }
      }
    else
      render json: { logged_in: false }
    end
  end

  # DELETE /logout
  def destroy
    reset_session
    render json: { logged_out: true }
  end
end
