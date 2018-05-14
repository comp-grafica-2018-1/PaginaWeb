class AddClavecompraToCotizmesexps < ActiveRecord::Migration[5.1]
  def change
    add_column :cotizmesexps, :clavecompra, :string
  end
end
