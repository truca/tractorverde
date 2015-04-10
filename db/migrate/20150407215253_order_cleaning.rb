class OrderCleaning < ActiveRecord::Migration
  def change
    change_table :orders do |t|
      t.remove :unitCost, :quantity
    end
  end
end
