class AddFechaentregaToOrdenclomuls < ActiveRecord::Migration[5.1]
  def change
    add_column :ordenclomuls, :fechaentrega, :date
  end
end
