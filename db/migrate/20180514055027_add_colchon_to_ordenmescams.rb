class AddColchonToOrdenmescams < ActiveRecord::Migration[5.1]
  def change
    add_column :ordenmescams, :colchon, :string
  end
end
