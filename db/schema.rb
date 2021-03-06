# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_07_08_195836) do

  create_table "lessons", force: :cascade do |t|
    t.string "technology_name"
    t.string "lesson_author"
    t.string "lesson_title"
    t.string "lesson_purpose"
    t.string "lesson_question"
    t.text "lesson_answer"
    t.text "lesson_body"
    t.text "lesson_snippet"
    t.text "lesson_example"
    t.string "lesson_link"
    t.string "lesson_rating"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "technologies", force: :cascade do |t|
    t.string "name"
    t.string "purpose"
    t.text "describe"
    t.string "technology_documentation_link"
    t.integer "technology_rating"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
