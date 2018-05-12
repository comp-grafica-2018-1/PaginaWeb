class AddCajonsuperiorToCotizmescams < ActiveRecord::Migration[5.1]
  def change
    add_column :cotizmescams, :cajonsuperior, :string
  end
end
