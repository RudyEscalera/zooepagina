class CreateVoluntarioMascota < ActiveRecord::Migration
  def change
    create_table :voluntario_mascota do |t|

      t.timestamps
    end
  end
end
