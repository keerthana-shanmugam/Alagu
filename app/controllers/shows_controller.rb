# frozen_string_literal: true

class ShowsController < ApplicationController
  skip_before_action :ensure_user_logged_in

  def wishlist
    @items = Wishlist.where(users_id: session[:current_user_id])
   
    @wishlist_count = Wishlist.where(users_id: session[:current_user_id]).count
    p"==============================="
    p @items
  end

  def cart
    @items = Cart.where(users_id: session[:current_user_id])
    
    @cart_count = Cart.where(users_id: session[:current_user_id] ).count
    p"==============================="
    p @items
  end
end
