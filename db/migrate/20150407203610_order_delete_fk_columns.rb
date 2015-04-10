class OrderDeleteFkColumns < ActiveRecord::Migration
  def change
    change_table :orders do |t|
      t.remove :product, :client
    end
  end
end
