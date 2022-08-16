# frozen_string_literal: true

class ApplicationController < ActionController::Base
  before_action :ensure_user_logged_in

  def ensure_user_logged_in
    redirect_to '/' unless current_user
  end

  def current_user
    return @current_user if @current_user

    current_user_id = session[:current_user_id]
    @current_user_id = User.find(current_user_id) if current_user_id
  end

  def search
    @parameter = params[:search]
    @@array = []
    @results = Add.where('name LIKE?', "%#{@parameter}%")
    @@presence_value = 1
    @results.each do |result|
      @@array.push(result.id)
      puts result.name
    end
    redirect_to "/lists/new"
  end

  def array_retuner
    @@array
  end

  def presence_value_returner
    @@presence_value
  end
end
