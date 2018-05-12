class AddMaterialToCotizmescams < ActiveRecord::Migration[5.1]
  def change
    add_column :cotizmescams, :material, :string
  end
end
