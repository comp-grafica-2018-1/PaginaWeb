class AddConfirmacionToCotizmescams < ActiveRecord::Migration[5.1]
  def change
    add_column :cotizmescams, :confirmacion, :string
  end
end
