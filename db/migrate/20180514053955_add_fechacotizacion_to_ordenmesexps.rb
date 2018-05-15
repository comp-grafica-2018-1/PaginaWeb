class AddFechacotizacionToOrdenmesexps < ActiveRecord::Migration[5.1]
  def change
    add_column :ordenmesexps, :fechacotizacion, :date
  end
end
