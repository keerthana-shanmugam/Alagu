# frozen_string_literal: true

class RemoveColumnInAdds < ActiveRecord::Migration[6.1]
  def change
    remove_column :adds, :image, :blob
  end
end
