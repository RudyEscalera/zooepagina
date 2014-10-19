class RemoveValuntarioFromRescate < ActiveRecord::Migration
  def change
    remove_column :rescates, :valuntario, :integer
  end
end
