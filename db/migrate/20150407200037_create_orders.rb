class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.date :orderDate
      t.integer :product
      t.integer :client
      t.integer :quantity
      t.integer :unitCost

      t.timestamps
    end
  end
end
