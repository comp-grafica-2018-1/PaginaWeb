class AddFechacotizacionToOrdenesccams < ActiveRecord::Migration[5.1]
  def change
    add_column :ordenesccams, :fechacotizacion, :date
  end
end
