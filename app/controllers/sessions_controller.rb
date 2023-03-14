class SessionsController < ApplicationController
  layout "login"

  skip_before_action :require_login, only: [:new, :create]

  def new
  end

  def create
    user = User.find_by(email: params[:email])&.authenticate(params[:password])

    if user
      session[:user_id] = user.id
      redirect_to dashboard_index_path
    else
      redirect_to new_session_path
    end
  end

  def destroy
    session[:user_id] = nil
    flash[:notice] = "You have been signed out!"
    redirect_to new_session_path
  end

  private

  def auth_params
    params.require(:user).permit(:email, :password)
  end
end
