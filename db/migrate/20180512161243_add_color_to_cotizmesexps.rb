class AddColorToCotizmesexps < ActiveRecord::Migration[5.1]
  def change
    add_column :cotizmesexps, :color, :string
  end
end
