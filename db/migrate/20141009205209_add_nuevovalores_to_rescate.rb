class AddNuevovaloresToRescate < ActiveRecord::Migration
  def change
    add_column :rescates, :fecha, :date
    add_column :rescates, :valuntario, :integer
  end
end
