class CreateOrdenmescams < ActiveRecord::Migration[5.1]
  def change
    create_table :ordenmescams do |t|

      t.timestamps
    end
  end
end
