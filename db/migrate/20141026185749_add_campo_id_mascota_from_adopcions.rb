class AddCampoIdMascotaFromAdopcions < ActiveRecord::Migration
  def change
  	add_column :adopcions, :id_mascota, :integer
  end
end
