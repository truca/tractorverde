class CreateOrderProducts < ActiveRecord::Migration
  def change
    create_table :order_products do |t|
      t.decimal :quantity
      t.integer :unitCost

      t.timestamps
    end
  end
end
