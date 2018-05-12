class CreateCotizesccams < ActiveRecord::Migration[5.1]
  def change
    create_table :cotizesccams do |t|
      t.string :correo
      t.string :nombre

      t.timestamps
    end
  end
end
