class AddFechacotizacionToOrdenmescams < ActiveRecord::Migration[5.1]
  def change
    add_column :ordenmescams, :fechacotizacion, :date
  end
end
