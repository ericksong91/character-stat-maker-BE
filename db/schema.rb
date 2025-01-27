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

ActiveRecord::Schema.define(version: 2023_01_24_190557) do

  create_table "characters", force: :cascade do |t|
    t.string "name"
    t.string "job"
    t.integer "user_id"
    t.integer "level"
    t.integer "hp"
    t.integer "str"
    t.integer "mag"
    t.integer "dex"
    t.integer "spd"
    t.integer "def"
    t.integer "res"
    t.integer "luk"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.datetime "created_at"
  end

end
