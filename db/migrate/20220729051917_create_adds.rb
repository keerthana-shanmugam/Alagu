# frozen_string_literal: true

class CreateAdds < ActiveRecord::Migration[6.1]
  def change
    create_table :adds do |t|
      t.string :name
      t.blob :image
      t.integer :price
      t.string :catogeries

      t.timestamps
    end
  end
end
