class CreateCotizmescams < ActiveRecord::Migration[5.1]
  def change
    create_table :cotizmescams do |t|
      t.string :correo
      t.string :nombre

      t.timestamps
    end
  end
end
