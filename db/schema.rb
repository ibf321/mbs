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

ActiveRecord::Schema.define(version: 20170910231811) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "addresses", force: :cascade do |t|
    t.string "country"
    t.string "city"
    t.string "state"
    t.string "neighborhood"
    t.string "street"
    t.string "number"
    t.string "complement"
    t.string "zip_code"
    t.bigint "donor_id"
    t.bigint "institution_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["donor_id"], name: "index_addresses_on_donor_id"
    t.index ["institution_id"], name: "index_addresses_on_institution_id"
  end

  create_table "donors", force: :cascade do |t|
    t.string "reason"
    t.string "fantasy"
    t.integer "kind"
    t.string "cnpj_number"
    t.string "cpf"
    t.date "registration_data"
    t.string "email"
    t.text "obs"
    t.string "phone"
    t.integer "status"
    t.integer "disclosure"
    t.string "kind_donor"
    t.string "donation"
    t.string "site"
    t.string "activity"
    t.bigint "unit_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["unit_id"], name: "index_donors_on_unit_id"
  end

  create_table "educationals", force: :cascade do |t|
    t.string "subject_matter"
    t.date "realisation_data"
    t.string "facilitator"
    t.string "technician"
    t.bigint "unit_id"
    t.bigint "participant_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["participant_id"], name: "index_educationals_on_participant_id"
    t.index ["unit_id"], name: "index_educationals_on_unit_id"
  end

  create_table "institutions", force: :cascade do |t|
    t.bigint "unit_id"
    t.integer "status"
    t.integer "cooperation"
    t.string "motive"
    t.string "reason"
    t.string "fantasy"
    t.string "cnpj"
    t.string "public"
    t.string "activity"
    t.string "genre"
    t.string "email"
    t.date "registration_date"
    t.text "obs"
    t.string "category"
    t.integer "small_meals"
    t.integer "large_meals"
    t.integer "f0004"
    t.integer "f0509"
    t.integer "f1011"
    t.integer "f1217"
    t.integer "f1819"
    t.integer "f2059"
    t.integer "f6000"
    t.integer "monday"
    t.integer "tuesday"
    t.integer "wednesday"
    t.integer "thursday"
    t.integer "friday"
    t.integer "sunday"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["unit_id"], name: "index_institutions_on_unit_id"
  end

  create_table "participants", force: :cascade do |t|
    t.string "name"
    t.string "institution"
    t.string "phone"
    t.string "email"
    t.bigint "educational_id"
    t.bigint "unit_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["educational_id"], name: "index_participants_on_educational_id"
    t.index ["unit_id"], name: "index_participants_on_unit_id"
  end

  create_table "responsibles", force: :cascade do |t|
    t.string "name"
    t.string "rg"
    t.string "cpf"
    t.string "function"
    t.string "phone"
    t.string "email"
    t.bigint "doner_id"
    t.bigint "institution_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["doner_id"], name: "index_responsibles_on_doner_id"
    t.index ["institution_id"], name: "index_responsibles_on_institution_id"
  end

  create_table "units", force: :cascade do |t|
    t.string "name"
    t.string "uf"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "document"
    t.integer "kind"
    t.integer "status"
    t.text "notes"
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

end
