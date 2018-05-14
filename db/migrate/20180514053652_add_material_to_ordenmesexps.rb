class AddMaterialToOrdenmesexps < ActiveRecord::Migration[5.1]
  def change
    add_column :ordenmesexps, :material, :string
  end
end
