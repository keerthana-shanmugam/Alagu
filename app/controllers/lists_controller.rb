# frozen_string_literal: true

$product_list = nil
class ListsController < ApplicationController
  skip_before_action :ensure_user_logged_in
  def new
    @current_user = current_user

    @wishlist_count = Wishlist.where(users_id: session[:current_user_id] ).count
    @cart_count = Cart.where(users_id: session[:current_user_id] ).count

    @search_details = Add.all
    @presence = 0
    @presence_value = presence_value_returner
    @search_params = array_retuner
    @presence = 1 if @search_params == []
    @@array = []
    @@presence_value = 0
  end

  @@array = []
  @@presence_value = 0

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

  def wishlist_items
    # product_id = params[:product_id]
    # puts "product_id is #{product_id}"
    # render plain: true
    current_user = session[:current_user_id]
    if current_user.nil?
      flash[:alert] = 'Please Login!'
      puts "cur_user_id is #{current_user}"
       redirect_to 'lists/new'
      # render plain: false
    else
      product_id = params[:product_id]
      # flash[:alert] = "Added to Wishlist!"
      cur_user_id = session[:current_user_id]
      puts "cur_user_id is #{cur_user_id}"
      puts "product_id is #{product_id}"
      # prod_id = {:item_id => product_id}
      # puts "Prod_id is #{prod_id}"
      @wishlist_products = Wishlist.create add_id: product_id, users_id: cur_user_id
      redirect_to '/lists/new'
      # render plain: true
      # puts "wishlist_products is #{@wishlist_products}"
      # locals: { wishlist_products:  @wishlist_products}
      
    end
  end

  def add_cart_items
    current_user = session[:current_user_id]
    if current_user.nil?
      flash[:alert] = 'Please Login!'
      puts "cur_user_id is #{current_user}"
       redirect_to 'lists/new'
      # render plain: false
    else
      product_id = params[:product_id]
      # flash[:alert] = "Added to Wishlist!"
      cur_user_id = session[:current_user_id]
      puts "cur_user_id is #{cur_user_id}"
      puts "product_id is #{product_id}"
      # prod_id = {:item_id => product_id}
      # puts "Prod_id is #{prod_id}"
      @wishlist_products = Cart.create add_id: product_id, users_id: cur_user_id
      redirect_to '/lists/new'
    end
  end
end
