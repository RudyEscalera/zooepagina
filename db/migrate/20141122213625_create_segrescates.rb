class CreateSegrescates < ActiveRecord::Migration
  def change
    create_table :segrescates do |t|
      t.integer :rescate_id
      t.text :text

      t.timestamps
    end
  end
end
