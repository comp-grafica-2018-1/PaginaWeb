class AddNombreToOrdenmescams < ActiveRecord::Migration[5.1]
  def change
    add_column :ordenmescams, :nombre, :string
  end
end
