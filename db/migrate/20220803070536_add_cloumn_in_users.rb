# frozen_string_literal: true

class AddCloumnInUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :roles, :string
  end
end
