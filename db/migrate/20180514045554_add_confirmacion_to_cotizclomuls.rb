class AddConfirmacionToCotizclomuls < ActiveRecord::Migration[5.1]
  def change
    add_column :cotizclomuls, :confirmacion, :string
  end
end
