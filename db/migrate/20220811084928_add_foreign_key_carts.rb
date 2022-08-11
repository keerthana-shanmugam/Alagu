class AddForeignKeyCarts < ActiveRecord::Migration[6.1]
  def change
    add_reference :carts ,:users , index: true 
  end
end
