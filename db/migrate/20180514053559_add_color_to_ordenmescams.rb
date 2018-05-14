class AddColorToOrdenmescams < ActiveRecord::Migration[5.1]
  def change
    add_column :ordenmescams, :color, :string
  end
end
