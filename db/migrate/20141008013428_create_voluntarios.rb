class CreateVoluntarios < ActiveRecord::Migration
  def change
    create_table :voluntarios do |t|
      t.string :nombre
      t.string :apellido_paterno
      t.string :apellido_materno
      t.string :estado
      t.integer :ci
      t.date :fecha_nacimiento
      t.string :lugar_nacimiento
      t.integer :edad
      t.string :estado_civil
      t.string :direccion
      t.integer :telefono_fijo
      t.integer :telefono_movil
      t.string :email
      t.integer :licensia_conducir
      t.text :formacion_academica

      t.timestamps
    end
  end
end
