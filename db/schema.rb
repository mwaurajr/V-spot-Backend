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


ActiveRecord::Schema[7.0].define(version: 2023_01_12_032710) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admins", force: :cascade do |t|
    t.text "first_name"
    t.text "last_name"
    t.text "email", null: false
    t.text "password_digest", null: false
    t.text "role"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_admins_on_email", unique: true
  end

  create_table "users", force: :cascade do |t|
    t.text "first_name"
    t.text "last_name"
    t.text "email", null: false
    t.text "password_digest", null: false
    t.text "role"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true


ActiveRecord::Schema[7.0].define(version: 2023_01_12_131923) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "clients", force: :cascade do |t|
    t.string "name"
    t.string "username"
    t.integer "age"
    t.string "address"
    t.string "phoneNumber"
    t.string "email"
    t.string "password_digest"


ActiveRecord::Schema[7.0].define(version: 2023_01_11_175747) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "access_tokens", force: :cascade do |t|
    t.string "token"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "bookings", force: :cascade do |t|
    t.string "start_date"
    t.string "end_date"
    t.string "booking_date"
    t.integer "no_guest"

    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end


  create_table "managers", force: :cascade do |t|
    t.string "name"
    t.string "username"
    t.integer "age"
    t.string "address"
    t.string "phoneNumber"
    t.string "email"
    t.string "password_digest"

  create_table "mpesas", force: :cascade do |t|
    t.string "checkoutRequestID"
    t.string "merchantRequestID"
    t.string "amount"
    t.string "mpesaReceiptNumber"
    t.string "phoneNumber"

    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end


  create_table "reviews", force: :cascade do |t|
    t.string "description"
    t.integer "ratings"
    t.bigint "client_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["client_id"], name: "index_reviews_on_client_id"
  end

  add_foreign_key "reviews", "clients"

  create_table "venues", force: :cascade do |t|
    t.string "price"
    t.string "description"
    t.string "location"
    t.string "capacity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false

  end


end
