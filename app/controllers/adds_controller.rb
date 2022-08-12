# frozen_string_literal: true

class AddsController < ApplicationController
  def new; end

  def create
    add = Add.new(product_params)
    if add.save
      redirect_to '/lists/new'
    else
      redirect_to '/adds/new'
    end
  end

  def add_catogeries
    product_catogeries = Catogery.new(catogeries_params)
    if product_catogeries.save
      render plain:true
    else
      render plain:false
    end
  end

  def add_sub_catogeries
    product_sub_catogeries = SubCatogery.new(sub_catogeries_params)
    product_sub_catogeries.catogeries_id = 1
    if product_sub_catogeries.save
      render plain:true
    else
      render plain:false
    end
  end

  private

  def product_params
    params.require(:add).permit(:name, :image, :price, :catogeries)
  end
  def catogeries_params
    params.require(:product_catogeries).permit(:name)
  end
  def sub_catogeries_params
    params.require(:product_sub_catogeries).permit(:name)
  end
end
