class AddBodyToSegrescate < ActiveRecord::Migration
  def change
    add_column :segrescates, :body, :text
  end
end
