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

ActiveRecord::Schema.define(version: 2020_08_23_181104) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "addresses", force: :cascade do |t|
    t.integer "zip_code"
    t.string "city"
    t.string "street"
    t.string "complement"
    t.integer "number"
    t.string "neighborhood"
    t.string "state"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "breeds", force: :cascade do |t|
    t.string "name"
    t.integer "size"
    t.string "medium_weight"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "pets", force: :cascade do |t|
    t.string "name"
    t.string "sex"
    t.integer "size"
    t.date "date_birth"
    t.integer "weight"
    t.boolean "neutered"
    t.bigint "user_id", null: false
    t.bigint "breed_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["breed_id"], name: "index_pets_on_breed_id"
    t.index ["user_id"], name: "index_pets_on_user_id"
  end

  create_table "products", force: :cascade do |t|
    t.string "flavor"
    t.string "weight"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "subs_products", force: :cascade do |t|
    t.bigint "pet_id", null: false
    t.bigint "product_id", null: false
    t.integer "quantity"
    t.string "status"
    t.bigint "subscription_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["pet_id"], name: "index_subs_products_on_pet_id"
    t.index ["product_id"], name: "index_subs_products_on_product_id"
    t.index ["subscription_id"], name: "index_subs_products_on_subscription_id"
  end

  create_table "subscriptions", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.string "delivery_time"
    t.integer "order_price"
    t.string "payment_gateway"
    t.string "status"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_subscriptions_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "first_name"
    t.string "last_name"
    t.integer "phone_number"
    t.bigint "address_id", null: false
    t.index ["address_id"], name: "index_users_on_address_id"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "pets", "breeds"
  add_foreign_key "pets", "users"
  add_foreign_key "subs_products", "pets"
  add_foreign_key "subs_products", "products"
  add_foreign_key "subs_products", "subscriptions"
  add_foreign_key "subscriptions", "users"
  add_foreign_key "users", "addresses"
end
