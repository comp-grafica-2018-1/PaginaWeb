class AddCantidadToOrdenesccams < ActiveRecord::Migration[5.1]
  def change
    add_column :ordenesccams, :cantidad, :string
  end
end
