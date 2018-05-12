class AddAnchuraToCotizclomuls < ActiveRecord::Migration[5.1]
  def change
    add_column :cotizclomuls, :anchura, :string
  end
end
