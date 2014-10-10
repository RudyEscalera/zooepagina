class CreateAdopcions < ActiveRecord::Migration
  def change
    create_table :adopcions do |t|
      t.integer :numero_adultos
      t.integer :numero_ninios
      t.integer :numero_perros
      t.integer :numero_gatos
      t.integer :numero_otros
      t.string :referencia_casa
      t.string :numero_referencia1
      t.string :numero_referencia2

      t.timestamps
    end
  end
end
