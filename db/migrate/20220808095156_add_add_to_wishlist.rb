# frozen_string_literal: true

class AddAddToWishlist < ActiveRecord::Migration[6.1]
  def change
    add_reference :wishlists, :add, null: false, foreign_key: true
  end
end
