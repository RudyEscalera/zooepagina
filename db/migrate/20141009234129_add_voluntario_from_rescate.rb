class AddVoluntarioFromRescate < ActiveRecord::Migration
  def change
    add_column :rescates, :voluntario, :string
  end
end
