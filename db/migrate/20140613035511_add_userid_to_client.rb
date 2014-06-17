class AddUseridToClient < ActiveRecord::Migration
  def change
    add_column :clients, :user_id, :integer
  end
  add_index :clientes, :user_id
end
