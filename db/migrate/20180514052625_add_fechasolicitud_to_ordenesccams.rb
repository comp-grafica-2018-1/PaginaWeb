class AddFechasolicitudToOrdenesccams < ActiveRecord::Migration[5.1]
  def change
    add_column :ordenesccams, :fechasolicitud, :date
  end
end
