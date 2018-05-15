class AddFechacotizacionToOrdenclomuls < ActiveRecord::Migration[5.1]
  def change
    add_column :ordenclomuls, :fechacotizacion, :date
  end
end
