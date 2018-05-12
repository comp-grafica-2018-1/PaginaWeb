class CreateCotizclomuls < ActiveRecord::Migration[5.1]
  def change
    create_table :cotizclomuls do |t|
      t.string :correo
      t.string :nombre

      t.timestamps
    end
  end
end
