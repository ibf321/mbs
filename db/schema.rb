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

ActiveRecord::Schema.define(version: 20171028118232) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "donors", force: :cascade do |t|
    t.string "reason"
    t.string "fantasy"
    t.string "cnpj"
    t.string "cpf"
    t.string "disclosure"
    t.string "activity"
    t.string "donation"
    t.string "email"
    t.integer "kind"
    t.string "phone"
    t.date "r_data"
    t.string "site"
    t.integer "status"
    t.string "contry"
    t.string "state"
    t.string "city"
    t.string "neighborhood"
    t.string "street"
    t.integer "number"
    t.string "name"
    t.string "function"
    t.string "rg"
    t.string "contacto"
    t.bigint "unit_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["unit_id"], name: "index_donors_on_unit_id"
  end

  create_table "educationals", force: :cascade do |t|
    t.string "subject_matter"
    t.string "facilitator"
    t.date "rdata"
    t.string "technical"
    t.string "contry"
    t.string "state"
    t.string "city"
    t.string "neighborhood"
    t.string "street"
    t.integer "number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "educationals_participants", force: :cascade do |t|
    t.bigint "participant_id"
    t.bigint "educational_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["educational_id"], name: "index_educationals_participants_on_educational_id"
    t.index ["participant_id"], name: "index_educationals_participants_on_participant_id"
  end

  create_table "institutions", force: :cascade do |t|
    t.string "fantasy"
    t.string "activity"
    t.string "category"
    t.string "cnpj"
    t.integer "cooperation"
    t.string "mcooperation"
    t.string "email"
    t.date "rdata"
    t.integer "f0004"
    t.integer "f0509"
    t.integer "f1011"
    t.integer "f1217"
    t.integer "f1819"
    t.integer "f2059"
    t.integer "f6000"
    t.integer "friday"
    t.integer "genre"
    t.integer "large_meals"
    t.integer "small_meals"
    t.integer "monday"
    t.integer "motive"
    t.integer "public"
    t.integer "reason"
    t.integer "atatus"
    t.integer "sunday"
    t.integer "thursday"
    t.integer "tuesday"
    t.integer "wednerday"
    t.string "contry"
    t.string "state"
    t.string "city"
    t.string "neighborhood"
    t.string "street"
    t.integer "number"
    t.string "name"
    t.string "function"
    t.string "rg"
    t.string "cpf"
    t.string "contacto"
    t.bigint "unit_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["unit_id"], name: "index_institutions_on_unit_id"
  end

  create_table "participants", force: :cascade do |t|
    t.string "name"
    t.string "institution"
    t.string "email"
    t.string "contacto"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "units", force: :cascade do |t|
    t.string "name"
    t.string "uf"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.integer "status"
    t.integer "kind"
    t.bigint "unit_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.string "username"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["unit_id"], name: "index_users_on_unit_id"
    t.index ["username"], name: "index_users_on_username", unique: true
  end

  add_foreign_key "donors", "units"
  add_foreign_key "educationals_participants", "educationals"
  add_foreign_key "educationals_participants", "participants"
  add_foreign_key "institutions", "units"
  add_foreign_key "users", "units"
end
