class CreateRescates < ActiveRecord::Migration
  def change
    create_table :rescates do |t|
      t.string :direccion_rescate
      t.text :observacion
      t.string :fecha

      t.timestamps
    end
  end
end
