class SessionsController <  ApplicationController
  include CurrentUserConcern

  # POST /login
  def create
    user = User
            .find_by(email: params[:user][:email])
            .try(:authenticate, params[:user][:password])

    if user
      session[:user_id] = user.id

      render json: { logged_in: true, user: user }, status: :created
    else
      render json: { message: 'Invalid email/password' }, status: 422
    end
  end

  # GET /logged_in
  def logged_in
    if @current_user
      render json: { logged_in: true, user: @current_user }
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