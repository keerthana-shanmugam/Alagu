class CreateCatogeries < ActiveRecord::Migration[6.1]
  def change
    create_table :catogeries do |t|
      t.string :name

      t.timestamps
    end
  end
end
