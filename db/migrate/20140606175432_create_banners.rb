class CreateBanners < ActiveRecord::Migration
  def change
    create_table :banners do |t|
      t.string :title
      t.string :image
      t.boolean :status
      t.string :caption
      t.integer :order

      t.timestamps
    end
  end
end
