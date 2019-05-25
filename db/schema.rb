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

ActiveRecord::Schema.define(version: 2019_05_25_171326) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "complaints", force: :cascade do |t|
    t.text "description"
    t.string "photo"
    t.boolean "resolved", default: false
    t.bigint "tenant_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["tenant_id"], name: "index_complaints_on_tenant_id"
  end

  create_table "departments", force: :cascade do |t|
    t.string "name"
    t.text "address"
    t.string "phone_number"
    t.integer "number_of_employees"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "developments", force: :cascade do |t|
    t.string "name"
    t.text "address"
    t.boolean "gym", default: false
    t.boolean "swimming_pool", default: false
    t.boolean "sauna_and_steam", default: false
    t.boolean "generator", default: false
    t.integer "parking_space"
    t.integer "number_of_units"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "leases", force: :cascade do |t|
    t.date "start_date"
    t.date "end_date"
    t.integer "duration"
    t.float "rent"
    t.float "deposit"
    t.text "notes"
    t.bigint "unit_id"
    t.bigint "tenant_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["tenant_id"], name: "index_leases_on_tenant_id"
    t.index ["unit_id"], name: "index_leases_on_unit_id"
  end

  create_table "noticeboards", force: :cascade do |t|
    t.string "name"
    t.bigint "development_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["development_id"], name: "index_noticeboards_on_development_id"
  end

  create_table "posts", force: :cascade do |t|
    t.text "description"
    t.bigint "tenant_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["tenant_id"], name: "index_posts_on_tenant_id"
  end

  create_table "reports", force: :cascade do |t|
    t.text "description"
    t.boolean "resolved", default: false
    t.bigint "employee_id"
    t.bigint "complaint_id"
    t.string "resolved_photo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["complaint_id"], name: "index_reports_on_complaint_id"
    t.index ["employee_id"], name: "index_reports_on_employee_id"
  end

  create_table "units", force: :cascade do |t|
    t.integer "unit_number"
    t.integer "floor"
    t.float "size"
    t.integer "bedrooms"
    t.integer "bathrooms"
    t.float "price"
    t.boolean "apartment", default: false
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "development_id"
    t.index ["development_id"], name: "index_units_on_development_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "first_name"
    t.string "last_name"
    t.string "nationality"
    t.string "contact_number"
    t.integer "age"
    t.date "dob"
    t.text "bio"
    t.string "photo"
    t.boolean "admin", default: false
    t.boolean "tenant", default: false
    t.boolean "employee", default: false
    t.bigint "departments_id"
    t.index ["departments_id"], name: "index_users_on_departments_id"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "complaints", "users", column: "tenant_id"
  add_foreign_key "leases", "units"
  add_foreign_key "leases", "users", column: "tenant_id"
  add_foreign_key "noticeboards", "developments"
  add_foreign_key "posts", "users", column: "tenant_id"
  add_foreign_key "reports", "complaints"
  add_foreign_key "reports", "users", column: "employee_id"
  add_foreign_key "units", "developments"
  add_foreign_key "users", "departments", column: "departments_id"
end
