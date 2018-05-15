class AddFechaentregaToOrdenesccams < ActiveRecord::Migration[5.1]
  def change
    add_column :ordenesccams, :fechaentrega, :date
  end
end
