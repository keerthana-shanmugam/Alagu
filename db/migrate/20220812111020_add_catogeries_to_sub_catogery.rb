class AddCatogeriesToSubCatogery < ActiveRecord::Migration[6.1]
  def change
    add_reference :sub_catogeries, :catogeries, null: false, foreign_key: true
  end
end
