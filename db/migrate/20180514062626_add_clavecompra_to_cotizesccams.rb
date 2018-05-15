class AddClavecompraToCotizesccams < ActiveRecord::Migration[5.1]
  def change
    add_column :cotizesccams, :clavecompra, :string
  end
end
