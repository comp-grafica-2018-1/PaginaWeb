class AddIdcotizacionToOrdenclomuls < ActiveRecord::Migration[5.1]
  def change
    add_column :ordenclomuls, :idcotizacion, :integer
  end
end
