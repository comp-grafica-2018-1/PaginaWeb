class CreateOrdenclomuls < ActiveRecord::Migration[5.1]
  def change
    create_table :ordenclomuls do |t|

      t.timestamps
    end
  end
end
