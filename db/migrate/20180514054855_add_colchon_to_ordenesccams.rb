class AddColchonToOrdenesccams < ActiveRecord::Migration[5.1]
  def change
    add_column :ordenesccams, :colchon, :string
  end
end
