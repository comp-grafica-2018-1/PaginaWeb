class AddMaterialToCotizclomuls < ActiveRecord::Migration[5.1]
  def change
    add_column :cotizclomuls, :material, :string
  end
end
