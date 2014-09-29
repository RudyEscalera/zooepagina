class CreateVoluntarioTemporals < ActiveRecord::Migration
  def change
    create_table :voluntario_temporals do |t|
      t.string :nombre
      t.string :correo
      t.integer :telefono
      t.string :ocupacion
      t.boolean :genero
      t.boolean :activo

      t.timestamps
    end
  end
end
