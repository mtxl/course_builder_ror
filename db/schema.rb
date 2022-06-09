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

ActiveRecord::Schema[7.0].define(version: 2022_05_22_094823) do
  create_table "courses", force: :cascade do |t|
    t.string "title"
    t.string "volume"
    t.integer "price"
    t.boolean "active", default: true
  end

  create_table "units", force: :cascade do |t|
    t.string "title"
    t.string "body"
    t.boolean "active"
  end

  create_table "units_courses", force: :cascade do |t|
    t.integer "unit_id", null: false
    t.integer "course_id", null: false
    t.index ["course_id"], name: "index_units_courses_on_course_id"
    t.index ["unit_id"], name: "index_units_courses_on_unit_id"
  end

  add_foreign_key "units_courses", "courses"
  add_foreign_key "units_courses", "units"
end
