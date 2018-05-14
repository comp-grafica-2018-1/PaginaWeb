class AddCorreoToOrdenmescams < ActiveRecord::Migration[5.1]
  def change
    add_column :ordenmescams, :correo, :string
  end
end
