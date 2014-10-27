class RemoverAdopcionIdFromPersonas < ActiveRecord::Migration
  def change
  	remove_column :personas, :id_adopcion, :integer
  end
end
