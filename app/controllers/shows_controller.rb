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

  def wishlist_delete
    @cancel = Wishlist.where(id: params[:id])
    # p @cancel.id
    @cancel.destroy_all
    puts "=================================="
    puts @cancel.destroy_all
    puts "=================================="
    redirect_to "/wishlists"
  end

  def cart_delete
    @cancel = Cart.where(id: params[:id])
    @cancel.destroy_all
    puts "=================================="
    puts @cancel.destroy_all
    puts "=================================="
    redirect_to "/cart"
  end
end
