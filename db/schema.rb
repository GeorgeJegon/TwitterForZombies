# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20140613183115) do

  create_table "banners", force: true do |t|
    t.string   "title"
    t.string   "image"
    t.boolean  "status"
    t.string   "caption"
    t.integer  "order"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "link"
  end

  create_table "categories", force: true do |t|
    t.string   "name"
    t.integer  "status"
    t.integer  "category_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "clients", force: true do |t|
    t.string   "zipcode"
    t.string   "phone"
    t.string   "celphone"
    t.string   "street"
    t.integer  "country_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
  end

  create_table "order_items", force: true do |t|
    t.integer  "order_id"
    t.integer  "product_id"
    t.integer  "quantity"
    t.decimal  "price_unit", precision: 8, scale: 2
    t.integer  "status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "orders", force: true do |t|
    t.integer  "client_id"
    t.decimal  "total_price", precision: 8, scale: 2
    t.integer  "status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "product_images", force: true do |t|
    t.string   "image"
    t.integer  "position"
    t.integer  "status"
    t.integer  "product_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "products", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.string   "main_image"
    t.decimal  "price",       precision: 8, scale: 2
    t.integer  "status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "products_categories", force: true do |t|
    t.integer "product_id"
    t.integer "category_id"
  end

  add_index "products_categories", ["category_id"], name: "index_products_categories_on_category_id"
  add_index "products_categories", ["product_id"], name: "index_products_categories_on_product_id"

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.integer  "status"
    t.string   "image"
    t.date     "last_access"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "password_digest"
  end

  create_table "zombies", force: true do |t|
    t.string   "name"
    t.integer  "age"
    t.string   "email"
    t.string   "password"
    t.boolean  "status"
    t.string   "image"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
