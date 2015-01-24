class AddAdopcionRefToSeguimientos < ActiveRecord::Migration
  def change
    add_reference :seguimientos, :adopcion, index: true
  end
end
