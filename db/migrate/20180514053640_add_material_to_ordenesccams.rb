class AddMaterialToOrdenesccams < ActiveRecord::Migration[5.1]
  def change
    add_column :ordenesccams, :material, :string
  end
end
