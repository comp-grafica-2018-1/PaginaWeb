class AddCorreoToOrdenmesexps < ActiveRecord::Migration[5.1]
  def change
    add_column :ordenmesexps, :correo, :string
  end
end
