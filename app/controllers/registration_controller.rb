# frozen_string_literal: true

class RegistrationController < ApplicationController
  skip_before_action :ensure_user_logged_in

  def new
    puts '============'
  end

  def create
    user = User.new(user_params)
    if user.save
      session[:current_user_id] = user.id
      redirect_to '/'
    else
      flash[:error] = user.errors.full_messages.join(',')
      redirect_to '/registration/new'
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :phone_number, :password)
  end
end
