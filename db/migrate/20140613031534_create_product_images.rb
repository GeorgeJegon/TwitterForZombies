class CreateProductImages < ActiveRecord::Migration
  def change
    create_table :product_images do |t|
      t.string :image
      t.integer :position
      t.integer :status
      t.integer :product_id

      t.timestamps
    end
    add_index :product_images, :product_id
  end
end
