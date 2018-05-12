class AddRepisaToCotizmescams < ActiveRecord::Migration[5.1]
  def change
    add_column :cotizmescams, :repisa, :string
  end
end
