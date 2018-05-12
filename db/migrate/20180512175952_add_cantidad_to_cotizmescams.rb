class AddCantidadToCotizmescams < ActiveRecord::Migration[5.1]
  def change
    add_column :cotizmescams, :cantidad, :string
  end
end
