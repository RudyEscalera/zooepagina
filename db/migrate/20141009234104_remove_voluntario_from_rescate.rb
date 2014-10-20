class RemoveVoluntarioFromRescate < ActiveRecord::Migration
  def change
    remove_column :rescates, :valuntario, :string
  end
end
