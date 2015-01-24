class CreateArchivos < ActiveRecord::Migration
  def change
    create_table :archivos do |t|

      t.timestamps
    end
    add_attachment :archivos, :file
  end
end
