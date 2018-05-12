class AddColorToCotizesccams < ActiveRecord::Migration[5.1]
  def change
    add_column :cotizesccams, :color, :string
  end
end
