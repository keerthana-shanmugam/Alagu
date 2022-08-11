class AddForeignkeytowishlists < ActiveRecord::Migration[6.1]
  def change
    add_reference :wishlists ,:users , index: true 
  end
end
