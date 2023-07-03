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

ActiveRecord::Schema[7.0].define(version: 2023_06_16_074305) do
  create_table "accounts", force: :cascade do |t|
    t.integer "supplier_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["supplier_id"], name: "index_accounts_on_supplier_id"
  end

  create_table "appointmeeents", force: :cascade do |t|
    t.datetime "app_date"
    t.integer "physician_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "patient_id", null: false
    t.index ["patient_id"], name: "index_appointmeeents_on_patient_id"
    t.index ["physician_id"], name: "index_appointmeeents_on_physician_id"
  end

  create_table "appointments", force: :cascade do |t|
    t.datetime "app_date"
    t.string "physician"
    t.string "references"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "authors", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "Author_Id"
    t.string "Name"
  end

  create_table "books", force: :cascade do |t|
    t.integer "Book_Id"
    t.datetime "Published_At"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "author_id", null: false
    t.index ["author_id"], name: "index_books_on_author_id"
  end

  create_table "companies", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "employs", force: :cascade do |t|
    t.string "name"
    t.integer "age"
    t.text "email"
    t.text "location"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "Status"
  end

  create_table "patients", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "physicians", force: :cascade do |t|
    t.string "name"
    t.integer "phy_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "pt_no"
    t.decimal "price"
    t.integer "user_id", null: false
    t.index ["user_id"], name: "index_products_on_user_id"
  end

  create_table "suppliers", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tables", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "role_id"
    t.string "age"
    t.text "email"
    t.text "location"
    t.index ["role_id"], name: "index_users_on_role_id"
    t.check_constraint "age < 30", name: "age_check"
  end

  add_foreign_key "accounts", "suppliers"
  add_foreign_key "appointmeeents", "patients"
  add_foreign_key "appointmeeents", "physicians"
  add_foreign_key "books", "authors"
  add_foreign_key "products", "users"
end
