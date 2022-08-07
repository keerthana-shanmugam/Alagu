class AddImageColumnInAdds < ActiveRecord::Migration[6.1]
  def change
    add_column :adds, :image, :binary
  end
end
