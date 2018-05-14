class AddFechasolicitudToOrdenmesexps < ActiveRecord::Migration[5.1]
  def change
    add_column :ordenmesexps, :fechasolicitud, :date
  end
end
