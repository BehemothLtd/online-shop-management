# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 0) do

  create_table "customers", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name", null: false
    t.string "phone", null: false
    t.text "address", null: false
    t.text "note"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["phone"], name: "index_customers_on_phone", unique: true
  end

  create_table "order_items", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "order_id", null: false
    t.integer "product_id", null: false
    t.float "amount", null: false
    t.text "note"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "orders", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "shop_id", null: false
    t.string "number", null: false
    t.string "status"
    t.string "customer_id", null: false
    t.integer "total", null: false
    t.integer "shipping_fee", default: 0
    t.string "shipper_name"
    t.string "shipper_phone"
    t.string "receiver_phone", null: false
    t.string "receiver_address", null: false
    t.text "note"
    t.datetime "ordered_at", null: false
    t.datetime "done_at"
    t.datetime "canceled_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["number"], name: "index_orders_on_number", unique: true
  end

  create_table "products", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "shop_id", null: false
    t.string "code", null: false
    t.string "name", null: false
    t.integer "price", null: false
    t.text "description", null: false
    t.integer "stock", null: false
    t.string "unit", null: false
    t.index ["code"], name: "index_products_on_code", unique: true
  end

  create_table "shops", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_shops_on_email", unique: true
  end

end
