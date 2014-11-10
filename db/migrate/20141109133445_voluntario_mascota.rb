class VoluntarioMascota < ActiveRecord::Migration
  def change
  	add_column :voluntario_mascota, :id_voluntario,:integer
  	add_column :voluntario_mascota, :id_mascota,:integer
  end
end
