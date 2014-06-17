class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :zipcode
      t.string :phone
      t.string :celphone
      t.string :street
      t.integer :country_id
      t.integer :user_id
      t.timestamps
    end
  end
end
