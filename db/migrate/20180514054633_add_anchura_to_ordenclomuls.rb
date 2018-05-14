class AddAnchuraToOrdenclomuls < ActiveRecord::Migration[5.1]
  def change
    add_column :ordenclomuls, :anchura, :string
  end
end
