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


  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"


  create_table "admins", force: :cascade do |t|
    t.string "name"
    t.string "username"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "bookings", force: :cascade do |t|
    t.integer "start_time"
    t.integer "end_time"
    t.integer "no_guest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "venue_id"
  end

  create_table "clients", force: :cascade do |t|

    t.string "name"
    t.string "username"
    t.integer "age"
    t.string "address"
    t.string "phoneNumber"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false

   
  end

  create_table "managers", force: :cascade do |t|
    t.string "name"
    t.string "username"
    t.string "phoneNumber"
    t.string "email"
    t.string "address"
    t.string "password_digest"
   

  end

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
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "client_id"
    t.integer "venue_id"
  end

    t.string "description"
    t.string "location"
    t.integer "capacity"
    t.integer "price"
    t.string "imageUrl"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false

  end

end
