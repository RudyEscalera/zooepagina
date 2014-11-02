class Adopcions < ActiveRecord::Migration
  def change
  	add_column :adopcions, :id_persona, :integer
  end
end
