class AddColorMaterialToCotizmescams < ActiveRecord::Migration[5.1]
  def change
    add_column :cotizmescams, :color, :string
  end
end
