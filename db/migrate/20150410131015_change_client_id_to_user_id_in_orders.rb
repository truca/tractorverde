class ChangeClientIdToUserIdInOrders < ActiveRecord::Migration
  def change
    change_table :orders do |t|
      t.remove :client_id
      t.integer :user_id
      t.index :user_id
    end
  end
end
