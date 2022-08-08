class Add < ApplicationRecord
    has_one_attached :image
    has_one :wishlist
    has_one :cart
end
