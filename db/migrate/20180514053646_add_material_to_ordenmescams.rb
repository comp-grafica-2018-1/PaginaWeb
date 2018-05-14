class AddMaterialToOrdenmescams < ActiveRecord::Migration[5.1]
  def change
    add_column :ordenmescams, :material, :string
  end
end
