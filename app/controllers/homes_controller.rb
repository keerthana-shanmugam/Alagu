# frozen_string_literal: true

class HomesController < ApplicationController
  skip_before_action :ensure_user_logged_in

  def index
    @wishlist_count = Wishlist.where(users_id: session[:current_user_id] ).count
    @cart_count = Cart.where(users_id: session[:current_user_id] ).count
  end
end
