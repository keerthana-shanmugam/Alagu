class ShowsController < ApplicationController
  skip_before_action :ensure_user_logged_in
  def wishlist
    @items = Add.joins(:wishlist).all.map do |wishlist|
      wishlist
  end
  end
 
  def cart
    @items = Add.joins(:cart).all.map do |cart|
      cart
  end
  
  end
end

