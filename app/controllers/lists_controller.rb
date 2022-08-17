# frozen_string_literal: true

$product_list = nil
class ListsController < ApplicationController
  skip_before_action :ensure_user_logged_in
  def new
    if session[:current_user_id].present?
      @current_user = User.find(session[:current_user_id])
      @wishlist_count = Wishlist.where(users_id: session[:current_user_id]).count
      @cart_count = Cart.where(users_id: session[:current_user_id]).count
    end
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
    redirect_to '/lists/new'
  end

  def array_retuner
    @@array
  end

  def presence_value_returner
    @@presence_value
  end

  def wishlist_items
    current_user
    if current_user.nil?
      flash[:alert] = 'Please Login!'
      redirect_to 'lists/new'
    else
      product_id = params[:product_id]
      puts '======================='
      puts product_id
      # flash[:alert] = "Added to Wishlist!"
      @wishlist_products = Wishlist.new(adds_id: product_id, users_id: current_user.id)
      redirect_to '/lists/new' if @wishlist_products.save
    end
  end

  def cart_items
    @cart = Cart.find_by(adds_id: params[:product_id], users_id: current_user.id)
    if @cart
      @cart.increment(:quantity)
      @cart.save
      redirect_to '/lists/new'
    else
      product_id = params[:product_id]
      # flash[:alert] = "Added to Cart!"
      @cart_products = Cart.new(adds_id: product_id, users_id: current_user.id)
      redirect_to '/lists/new' if @cart_products.save
    end
  end

  def product_list_delete
    @cancel = Add.where(id: params[:id])
    @cancel.destroy_all
    puts '=================================='
    puts @cancel.destroy_all
    puts '=================================='
    redirect_to '/list_products'
  end
end
