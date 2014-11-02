class Personas < ActiveRecord::Migration
  def change
  	add_column :personas, :id_adopcion, :integer
  end
end
