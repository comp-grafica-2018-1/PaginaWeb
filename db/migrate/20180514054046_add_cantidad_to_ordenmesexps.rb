class AddCantidadToOrdenmesexps < ActiveRecord::Migration[5.1]
  def change
    add_column :ordenmesexps, :cantidad, :string
  end
end
