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

<<<<<<< HEAD
ActiveRecord::Schema.define(version: 20170523181308) do
=======
ActiveRecord::Schema.define(version: 20170518170955) do
>>>>>>> 1dce82bdf31afcdec195be5fd5974dc529ede244

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cuisines", force: :cascade do |t|
    t.string   "name"
<<<<<<< HEAD
    t.decimal  "weight"
=======
>>>>>>> 1dce82bdf31afcdec195be5fd5974dc529ede244
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "diet_restrictions", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

<<<<<<< HEAD
  create_table "liked_cuisines", force: :cascade do |t|
    t.integer  "cuisine_id"
    t.integer  "user_id"
    t.decimal  "weight"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

=======
>>>>>>> 1dce82bdf31afcdec195be5fd5974dc529ede244
  create_table "liked_recipes", force: :cascade do |t|
    t.integer  "recipe_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

<<<<<<< HEAD
  create_table "quiz_answers", force: :cascade do |t|
    t.integer  "liked_recipe_id"
    t.integer  "user_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

=======
>>>>>>> 1dce82bdf31afcdec195be5fd5974dc529ede244
  create_table "recipe_preferences", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "diet_restriction"
    t.string   "health_label"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "spoonacular_devs", force: :cascade do |t|
    t.text     "data"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "taste_preferences", force: :cascade do |t|
    t.integer  "user_id"
<<<<<<< HEAD
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "liked_recipe_id"
=======
    t.integer  "cuisine_id"
    t.integer  "weight"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
>>>>>>> 1dce82bdf31afcdec195be5fd5974dc529ede244
  end

  create_table "user_diet_settings", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "diet_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.integer  "failed_attempts",        default: 0,  null: false
    t.string   "unlock_token"
    t.datetime "locked_at"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
<<<<<<< HEAD
    t.string   "username"
    t.string   "picture"
=======
>>>>>>> 1dce82bdf31afcdec195be5fd5974dc529ede244
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
    t.index ["unlock_token"], name: "index_users_on_unlock_token", unique: true, using: :btree
  end

end
