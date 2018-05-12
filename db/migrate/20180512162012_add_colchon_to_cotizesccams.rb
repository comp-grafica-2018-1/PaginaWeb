class AddColchonToCotizesccams < ActiveRecord::Migration[5.1]
  def change
    add_column :cotizesccams, :colchon, :string
  end
end
