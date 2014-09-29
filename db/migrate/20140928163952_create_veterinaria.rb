class CreateVeterinaria < ActiveRecord::Migration
  def change
    create_table :veterinaria do |t|
      t.string :nombre
      t.string :direccion
      t.integer :telefono
      t.integer :movil
      t.text :encargado
      t.boolean :activo
      t.text :descripcion

      t.timestamps
    end
  end
end
