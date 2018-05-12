class AddAlturaToCotizclomuls < ActiveRecord::Migration[5.1]
  def change
    add_column :cotizclomuls, :altura, :string
  end
end
