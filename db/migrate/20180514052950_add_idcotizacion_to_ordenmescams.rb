class AddIdcotizacionToOrdenmescams < ActiveRecord::Migration[5.1]
  def change
    add_column :ordenmescams, :idcotizacion, :integer
  end
end
