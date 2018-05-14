class AddColorToOrdenesccams < ActiveRecord::Migration[5.1]
  def change
    add_column :ordenesccams, :color, :string
  end
end
