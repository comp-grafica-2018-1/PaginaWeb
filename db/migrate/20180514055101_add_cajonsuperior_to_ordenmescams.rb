class AddCajonsuperiorToOrdenmescams < ActiveRecord::Migration[5.1]
  def change
    add_column :ordenmescams, :cajonsuperior, :string
  end
end
