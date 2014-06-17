class Product < ActiveRecord::Base
  has_many :product_images, dependent: :destroy
  has_many :products_categories
  has_many :categories, through: :products_categories
  has_many :order_items
end
