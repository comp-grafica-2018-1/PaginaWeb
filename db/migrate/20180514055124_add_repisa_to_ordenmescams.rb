class AddRepisaToOrdenmescams < ActiveRecord::Migration[5.1]
  def change
    add_column :ordenmescams, :repisa, :string
  end
end
