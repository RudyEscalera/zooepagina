class CreateMascota < ActiveRecord::Migration
  def change
    create_table :mascota do |t|
      t.string :nombre
      t.string :especie
      t.string :raza
      t.string :sexo
      t.integer :edad
      t.string :color
      t.string :estado
      t.string :depar
      t.string :hexa
      t.string :octa
      t.string :anti
      t.string :esterilizacion
      t.text :observacion
      t.string :extension

      t.timestamps
    end
    add_attachment :mascota, :image
  end
end
