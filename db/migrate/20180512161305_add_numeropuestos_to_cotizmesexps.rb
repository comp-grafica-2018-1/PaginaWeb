class AddNumeropuestosToCotizmesexps < ActiveRecord::Migration[5.1]
  def change
    add_column :cotizmesexps, :numeropuestos, :string
  end
end
