class AddClientIdToOrders < ActiveRecord::Migration
  def change
    change_table :orders do |t|
      t.integer :client_id
      t.index :client_id
    end
  end
end
