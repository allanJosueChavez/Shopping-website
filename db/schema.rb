# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2022_10_10_190406) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "customers", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_customers_on_email", unique: true
    t.index ["reset_password_token"], name: "index_customers_on_reset_password_token", unique: true
  end

  create_table "discounts", force: :cascade do |t|
    t.string "name"
    t.integer "percent"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "items", force: :cascade do |t|
    t.integer "amount"
    t.integer "subtotal"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "products_id"
    t.index ["products_id"], name: "index_items_on_products_id"
  end

  create_table "orders", force: :cascade do |t|
    t.integer "total"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "customers_id"
    t.bigint "promos_id"
    t.bigint "items_id"
    t.index ["customers_id"], name: "index_orders_on_customers_id"
    t.index ["items_id"], name: "index_orders_on_items_id"
    t.index ["promos_id"], name: "index_orders_on_promos_id"
  end

  create_table "products", force: :cascade do |t|
    t.string "name"
    t.integer "price"
    t.string "tag"
    t.string "category"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "discounts_id"
    t.index ["discounts_id"], name: "index_products_on_discounts_id"
  end

  create_table "promos", force: :cascade do |t|
    t.string "code"
    t.integer "discount"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reviews", force: :cascade do |t|
    t.string "title"
    t.integer "rating"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "products_id"
    t.index ["products_id"], name: "index_reviews_on_products_id"
  end

  add_foreign_key "items", "products", column: "products_id"
  add_foreign_key "orders", "customers", column: "customers_id"
  add_foreign_key "orders", "items", column: "items_id"
  add_foreign_key "orders", "promos", column: "promos_id"
  add_foreign_key "products", "discounts", column: "discounts_id"
  add_foreign_key "reviews", "products", column: "products_id"
end
