class AddCantidadToCotizclomuls < ActiveRecord::Migration[5.1]
  def change
    add_column :cotizclomuls, :cantidad, :string
  end
end
