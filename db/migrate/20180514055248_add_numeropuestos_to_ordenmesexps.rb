class AddNumeropuestosToOrdenmesexps < ActiveRecord::Migration[5.1]
  def change
    add_column :ordenmesexps, :numeropuestos, :string
  end
end
