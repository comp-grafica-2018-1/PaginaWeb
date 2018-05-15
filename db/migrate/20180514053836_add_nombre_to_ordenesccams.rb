class AddNombreToOrdenesccams < ActiveRecord::Migration[5.1]
  def change
    add_column :ordenesccams, :nombre, :string
  end
end
