class CreateZombies < ActiveRecord::Migration
  def change
    create_table :zombies do |t|
      t.string :name
      t.integer :age
      t.string :email
      t.string :password
      t.boolean :status
      t.string :image

      t.timestamps
    end
  end
end
