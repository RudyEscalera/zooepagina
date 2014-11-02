class AddEstadoToUsers < ActiveRecord::Migration
  def change
    add_column :users, :estado, :boolean
  end
end
