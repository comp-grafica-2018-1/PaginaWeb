class AddFechasolicitudToOrdenmescams < ActiveRecord::Migration[5.1]
  def change
    add_column :ordenmescams, :fechasolicitud, :date
  end
end
