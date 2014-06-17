class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.string :main_image
      t.decimal :price, precision: 8, scale: 2
      t.integer :status

      t.timestamps
    end
  end
end
