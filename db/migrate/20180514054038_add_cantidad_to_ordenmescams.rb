class AddCantidadToOrdenmescams < ActiveRecord::Migration[5.1]
  def change
    add_column :ordenmescams, :cantidad, :string
  end
end
