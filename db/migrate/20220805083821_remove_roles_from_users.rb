class RemoveRolesFromUsers < ActiveRecord::Migration[6.1]
  def change
    remove_column :users, :roles, :string
    add_column :users, :role, :string, default: "user"
  end
end
