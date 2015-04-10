class AddColumnsToUsers < ActiveRecord::Migration
  def change
    change_table :users do |t|
      t.string :nombre
      t.string :direccion
      t.string :telefono
      t.string :telefono2
    end
  end
end
