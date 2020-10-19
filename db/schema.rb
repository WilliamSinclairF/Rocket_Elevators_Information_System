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

ActiveRecord::Schema.define(version: 2020_10_19_144023) do

  create_table "addresses", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "type_of_address"
    t.string "status"
    t.string "entity"
    t.integer "number_and_street"
    t.integer "suite_or_apartment"
    t.string "city"
    t.string "postal_code"
    t.string "country"
    t.string "notes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "batteries", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "building_id"
    t.integer "battery_id"
    t.string "type"
    t.string "status"
    t.integer "employee_id"
    t.date "date_of_commissioning"
    t.date "date_of_last_inspection"
    t.string "certificate_of_operations"
    t.string "information"
    t.string "notes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "building_details", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "building_id"
    t.string "information_key"
    t.string "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "buildings", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "customer_id"
    t.string "Address"
    t.string "full_name_administrator"
    t.string "email_administrator_"
    t.integer "phone_number_administrator"
    t.string "full_name_technical_contact"
    t.string "technical_contact_email"
    t.integer "technical_contact_phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "columns", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "battery_id"
    t.string "type"
    t.integer "number_of_floors_served"
    t.string "status"
    t.string "information"
    t.string "notes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "employees", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "email"
    t.string "first_name"
    t.string "last_name"
    t.string "function"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "leads", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "full_name"
    t.string "email"
    t.string "phone"
    t.string "business_name"
    t.string "project_name"
    t.string "department"
    t.text "project_description"
    t.text "message"
    t.binary "file_attachment", limit: 16777215
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "customers", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "user_id"
    t.integer "customers_creation_date"
    t.string "company_name"
    t.string "company_headquarters_address"
    t.string "full_name_company_contact"
    t.string "company_contact_phone"
    t.string "integer"
    t.string "email_company_contact"
    t.string "company_description"
    t.string "full_name_technical_autorithy_phone_service"
    t.string "technical_manager_email_service"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "elevators", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "column_id"
    t.string "serial_number"
    t.string "model"
    t.string "type"
    t.string "status"
    t.date "date_of_commissioning"
    t.date "date_of_last_inspection"
    t.string "certificate_of_inspection"
    t.string "information"
    t.string "notes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "employees", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "email"
    t.string "first_name"
    t.string "last_name"
    t.string "function"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "quotes", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "apartments"
    t.integer "floors"
    t.integer "basements"
    t.integer "businesses"
    t.integer "elevator_shafts"
    t.integer "parking_spaces"
    t.integer "occupants"
    t.integer "opening_hours"
    t.string "product_line"
    t.decimal "install_fee", precision: 8, scale: 2
    t.decimal "total_price", precision: 8, scale: 2
    t.integer "unit_price"
    t.integer "elevator_number"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "building_type"
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "user_id"
    t.string "first_name"
    t.string "last_name"
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.boolean "is_admin", default: false
    t.boolean "is_employee", default: false
    t.boolean "is_user", default: true
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
