# frozen_string_literal: true

class SessionsController < ApplicationController
  skip_before_action :ensure_user_logged_in

  def new
    puts '============'
  end

  def create
    user = User.find_by(email: login_params[:email])
    if user&.authenticate(login_params[:password])
      session[:current_user_id] = user.id

      redirect_to root_path
    else
      flash[:error] = 'Invaild email or password'
      redirect_to '/signin'
    end
  end

  def destroy
    session[:current_user_id] = nil
    # @current_user = nil
    redirect_to '/'
  end

  private

  def login_params
    params.require(:user).permit(:email, :password)
  end
end
