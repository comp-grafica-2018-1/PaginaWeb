class AddIdcotizacionToOrdenesccams < ActiveRecord::Migration[5.1]
  def change
    add_column :ordenesccams, :idcotizacion, :integer
  end
end
