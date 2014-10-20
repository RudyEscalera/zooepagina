class AddValuntarioFromRescate < ActiveRecord::Migration
  def change
    add_column :rescates, :valuntario, :string
  end
end
