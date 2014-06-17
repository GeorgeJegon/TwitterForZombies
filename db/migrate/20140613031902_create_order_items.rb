class CreateOrderItems < ActiveRecord::Migration
  def change
    create_table :order_items do |t|
      t.integer :order_id
      t.integer :product_id
      t.integer :quantity
      t.decimal :price_unit, precision: 8, scale: 2
      t.integer :status

      t.timestamps
    end
  end
end
