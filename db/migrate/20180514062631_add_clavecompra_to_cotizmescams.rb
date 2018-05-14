class AddClavecompraToCotizmescams < ActiveRecord::Migration[5.1]
  def change
    add_column :cotizmescams, :clavecompra, :string
  end
end
