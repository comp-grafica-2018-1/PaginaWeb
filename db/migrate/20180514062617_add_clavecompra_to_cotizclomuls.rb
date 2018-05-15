class AddClavecompraToCotizclomuls < ActiveRecord::Migration[5.1]
  def change
    add_column :cotizclomuls, :clavecompra, :string
  end
end
