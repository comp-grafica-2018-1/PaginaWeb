class AddMaterialToCotizesccams < ActiveRecord::Migration[5.1]
  def change
    add_column :cotizesccams, :material, :string
  end
end
