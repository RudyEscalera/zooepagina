class AddImageToMascota < ActiveRecord::Migration
  def change
    add_column :mascota, :image, :string
  end
end
