class AddsController < ApplicationController
  skip_before_action :ensure_user_logged_in
  def new
  end

  def create
    add = Add.new(product_params)
    if add.save
      redirect_to '/lists/new'
    else
      redirect_to '/adds/new'
    end
  end

  private
  def product_params
    params.require(:add).permit(:name , :image , :price , :catogeries)
  end
end
