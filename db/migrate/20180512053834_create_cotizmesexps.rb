class CreateCotizmesexps < ActiveRecord::Migration[5.1]
  def change
    create_table :cotizmesexps do |t|
      t.string :correo
      t.string :nombre

      t.timestamps
    end
  end
end
