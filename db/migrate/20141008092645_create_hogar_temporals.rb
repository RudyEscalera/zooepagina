class CreateHogarTemporals < ActiveRecord::Migration
  def change
    create_table :hogar_temporals do |t|
      t.string :ci
      t.string :nombres
      t.string :apellidos
      t.string :telefono_fijo
      t.text :direccion
      t.string :numero

      t.timestamps
    end
  end
end
