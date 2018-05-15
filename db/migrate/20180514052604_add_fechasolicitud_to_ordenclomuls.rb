class AddFechasolicitudToOrdenclomuls < ActiveRecord::Migration[5.1]
  def change
    add_column :ordenclomuls, :fechasolicitud, :date
  end
end
