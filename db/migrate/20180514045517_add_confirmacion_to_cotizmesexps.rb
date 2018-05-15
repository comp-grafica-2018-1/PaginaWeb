class AddConfirmacionToCotizmesexps < ActiveRecord::Migration[5.1]
  def change
    add_column :cotizmesexps, :confirmacion, :string
  end
end
