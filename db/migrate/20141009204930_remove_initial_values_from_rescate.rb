class RemoveInitialValuesFromRescate < ActiveRecord::Migration
  def change
    remove_column :rescates, :fecha, :string
  end
end
