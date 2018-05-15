class AddIdcotizacionToOrdenmesexps < ActiveRecord::Migration[5.1]
  def change
    add_column :ordenmesexps, :idcotizacion, :integer
  end
end
