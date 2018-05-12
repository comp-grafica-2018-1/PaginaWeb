class AddColchonToCotizmescams < ActiveRecord::Migration[5.1]
  def change
    add_column :cotizmescams, :colchon, :string
  end
end
