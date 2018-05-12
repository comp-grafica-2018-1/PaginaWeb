class AddCantidadToCotizesccams < ActiveRecord::Migration[5.1]
  def change
    add_column :cotizesccams, :cantidad, :string
  end
end
