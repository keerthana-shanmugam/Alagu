# frozen_string_literal: true

class Add < ApplicationRecord
  has_one_attached :image
  has_many :wishlists
  has_many :carts

  validates :name, presence: true, length: { minimum: 3, maximum: 50 }
  validates :image, presence: true
  validates :price, presence: true, length: { minimum: 1, maximum: 5 }
  validates :catogeries, presence: true, length: { minimum: 4, maximum: 7 }
end
