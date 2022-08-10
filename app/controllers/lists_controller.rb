# frozen_string_literal: true

class ListsController < ApplicationController
  skip_before_action :ensure_user_logged_in
  def new
    @current_user = current_user

    @wishlist_count = Wishlist.all.length
  end

  def wishlist_items
    # product_id = params[:product_id]
    # puts "product_id is #{product_id}"
    # render plain: true
    current_user = session[:current_user_id]
    if current_user.nil?
      flash[:alert] = 'Please Login!'
      puts "cur_user_id is #{current_user}"
      #  redirect_to 'lists/new'
      render plain: false
    else
      product_id = params[:product_id]
      # flash[:alert] = "Added to Wishlist!"
      cur_user_id = session[:current_user_id]
      puts "cur_user_id is #{cur_user_id}"
      puts "product_id is #{product_id}"
      # prod_id = {:item_id => product_id}
      # puts "Prod_id is #{prod_id}"
      @wishlist_products = Wishlist.new(add_id: product_id).save
      redirect_to '/lists/new'
      # render plain: true
      # puts "wishlist_products is #{@wishlist_products}"
      # locals: { wishlist_products:  @wishlist_products}
      # puts wishlist
      # p "================================================="
      # p "================================================="
      # p "================================================="

    end
  end

  def add_cart_items
    current_user = session[:current_user_id]
    if current_user.nil?
      flash[:alert] = 'Please Login!'
      puts "cur_user_id is #{current_user}"
      #  redirect_to 'lists/new'
      render plain: false
    else
      product_id = params[:product_id]
      # flash[:alert] = "Added to Wishlist!"
      cur_user_id = session[:current_user_id]
      puts "cur_user_id is #{cur_user_id}"
      puts "product_id is #{product_id}"
      # prod_id = {:item_id => product_id}
      # puts "Prod_id is #{prod_id}"
      @wishlist_products = Cart.new(add_id: product_id).save

      redirect_to '/lists/new'
    end
  end
  # end
end
