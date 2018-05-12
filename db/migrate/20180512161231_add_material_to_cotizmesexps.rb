class AddMaterialToCotizmesexps < ActiveRecord::Migration[5.1]
  def change
    add_column :cotizmesexps, :material, :string
  end
end
