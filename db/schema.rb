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

ActiveRecord::Schema[7.1].define(version: 2024_06_17_184609) do
  create_table "articles", force: :cascade do |t|
    t.string "title"
    t.string "pic"
    t.string "text"
    t.string "mytype"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "documents", force: :cascade do |t|
    t.integer "user_id"
    t.string "mydocument"
    t.string "title"
    t.string "filename"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "people", force: :cascade do |t|
    t.integer "user_id"
    t.string "civilite"
    t.string "type"
    t.string "nomdusage"
    t.string "nomdefamille"
    t.string "communnenaissance"
    t.string "paysnaissance"
    t.string "dptnaissance"
    t.string "tel"
    t.string "mobile"
    t.string "email"
    t.text "observations"
    t.string "piecej"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "prenom"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "username"
    t.string "civilite"
    t.string "nomusuel"
    t.string "nomdenaissance"
    t.string "prenom"
    t.date "datedenaissance"
    t.string "dptnaissance"
    t.string "communenaissance"
    t.string "paysnaissance"
    t.string "photo"
    t.string "tel"
    t.string "mobile"
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at", precision: nil
    t.datetime "remember_created_at", precision: nil
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "adresse"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
