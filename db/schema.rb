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

ActiveRecord::Schema.define(version: 20161130155845) do

  create_table "accounts", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "uuid",                 limit: 32
    t.string   "mobile_number",        limit: 50
    t.string   "email",                limit: 50
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
    t.string   "authentication_token"
    t.string   "password_digest"
  end

  create_table "accounts_roles", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "account_id"
    t.integer  "role_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "customers", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "account_id"
    t.string   "wechat_id",       limit: 50
    t.string   "mobile_number",   limit: 50
    t.string   "nick_name",       limit: 50
    t.string   "heard_url",       limit: 50
    t.string   "real_name",       limit: 50
    t.string   "gender",          limit: 10
    t.integer  "age"
    t.string   "address"
    t.boolean  "is_wechat_focus"
    t.integer  "level"
    t.integer  "integral"
    t.string   "remark"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  create_table "detail_items", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name",       limit: 50
    t.string   "remark"
    t.boolean  "is_deleted"
    t.datetime "deleted_at"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "orders", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "uuid",        limit: 32
    t.integer  "product_id"
    t.float    "unit_price",  limit: 24
    t.integer  "amount"
    t.integer  "status"
    t.float    "total_price", limit: 24
    t.integer  "buyer_id"
    t.string   "buyer_type",  limit: 50
    t.integer  "seller_id"
    t.string   "seller_type", limit: 50
    t.integer  "estimate"
    t.string   "remark"
    t.boolean  "is_deleted"
    t.datetime "deleted_at"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "pictures", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.string   "url"
    t.integer  "imageable_id"
    t.string   "imageable_type", limit: 50
    t.string   "remark"
    t.boolean  "is_deleted"
    t.datetime "deleted_at"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "products", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "uuid",        limit: 32
    t.integer  "store_id"
    t.string   "name"
    t.string   "description"
    t.string   "detail"
    t.integer  "stock"
    t.float    "price",       limit: 24
    t.float    "real_price",  limit: 24
    t.integer  "status"
    t.integer  "type"
    t.boolean  "is_deleted"
    t.string   "remark"
    t.datetime "deleted_at"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "roles", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name",       limit: 50
    t.string   "remark"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "shopping_carts", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "product_id"
    t.integer  "amount"
    t.string   "remark"
    t.boolean  "is_deleted"
    t.datetime "deleted_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "stores", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "account_id"
    t.string   "name",          limit: 50
    t.string   "description"
    t.integer  "type"
    t.string   "address"
    t.string   "mobile_number", limit: 50
    t.string   "remark"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "stores_products", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "product_id"
    t.integer  "store_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
