class AddFechaentregaToOrdenmescams < ActiveRecord::Migration[5.1]
  def change
    add_column :ordenmescams, :fechaentrega, :date
  end
end
