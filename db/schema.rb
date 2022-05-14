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

ActiveRecord::Schema[7.0].define(version: 2022_05_13_222810) do
  create_table "fixed_expenses", force: :cascade do |t|
    t.integer "house"
    t.integer "car"
    t.integer "insurance"
    t.integer "tax"
    t.integer "personal"
    t.integer "communication"
    t.integer "infra"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "pay_month"
    t.string "pay_year"
    t.integer "user_id"
    t.index ["user_id"], name: "index_fixed_expenses_on_user_id"
  end

  create_table "incomes", force: :cascade do |t|
    t.integer "salary_t"
    t.integer "salary_s"
    t.integer "bonus_t"
    t.integer "bonus_s"
    t.integer "cashback"
    t.integer "childcare_t"
    t.integer "childcare_s"
    t.integer "childsupport"
    t.integer "others"
    t.string "pay_year"
    t.string "pay_month"
    t.integer "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_incomes_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "variable_expenses", force: :cascade do |t|
    t.integer "food"
    t.integer "car"
    t.integer "trans"
    t.integer "child"
    t.integer "comodity"
    t.integer "furniture"
    t.integer "present"
    t.integer "cash"
    t.string "pay_year"
    t.string "pay_month"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.index ["user_id"], name: "index_variable_expenses_on_user_id"
  end

  add_foreign_key "fixed_expenses", "users"
  add_foreign_key "incomes", "users"
  add_foreign_key "variable_expenses", "users"
end
