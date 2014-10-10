class CreatePersonas < ActiveRecord::Migration
  def change
    create_table :personas do |t|
      t.string :ci
      t.string :nombres
      t.string :apellido_paterno
      t.string :apellido_materno
      t.date :fecha_nacimiento

      t.timestamps
    end
  end
end
