class AddCorreoToOrdenesccams < ActiveRecord::Migration[5.1]
  def change
    add_column :ordenesccams, :correo, :string
  end
end
