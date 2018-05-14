class AddNombreToOrdenclomuls < ActiveRecord::Migration[5.1]
  def change
    add_column :ordenclomuls, :nombre, :string
  end
end
