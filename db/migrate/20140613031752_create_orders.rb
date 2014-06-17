class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :client_id
      t.decimal :total_price, precision: 8, scale: 2
      t.integer :status

      t.timestamps
    end
  end
end
