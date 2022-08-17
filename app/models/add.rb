# frozen_string_literal: true

class Add < ApplicationRecord
  has_one_attached :image
  has_many :wishlists
  has_many :carts
end
