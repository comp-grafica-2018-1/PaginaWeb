class AddCorreoToOrdenclomuls < ActiveRecord::Migration[5.1]
  def change
    add_column :ordenclomuls, :correo, :string
  end
end
