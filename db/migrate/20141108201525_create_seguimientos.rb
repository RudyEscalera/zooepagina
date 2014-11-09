class CreateSeguimientos < ActiveRecord::Migration
  def change
    create_table :seguimientos do |t|
      t.integer :id_adopcion
      t.text :observacion

      t.timestamps
    end
  end
end
