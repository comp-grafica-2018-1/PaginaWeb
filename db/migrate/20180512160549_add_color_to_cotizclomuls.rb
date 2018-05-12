class AddColorToCotizclomuls < ActiveRecord::Migration[5.1]
  def change
    add_column :cotizclomuls, :color, :string
  end
end
