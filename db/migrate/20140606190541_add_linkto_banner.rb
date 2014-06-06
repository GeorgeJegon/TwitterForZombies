class AddLinktoBanner < ActiveRecord::Migration
  def change
    add_column :banner, :link, :string
  end
end
