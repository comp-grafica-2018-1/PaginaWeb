class CreateOrdenmesexps < ActiveRecord::Migration[5.1]
  def change
    create_table :ordenmesexps do |t|

      t.timestamps
    end
  end
end
