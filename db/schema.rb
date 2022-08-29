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

ActiveRecord::Schema[7.0].define(version: 2022_08_29_151506) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "answers", force: :cascade do |t|
    t.bigint "option_id", null: false
    t.bigint "question_id", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["option_id"], name: "index_answers_on_option_id"
    t.index ["question_id"], name: "index_answers_on_question_id"
    t.index ["user_id"], name: "index_answers_on_user_id"
  end

  create_table "fun_facts", force: :cascade do |t|
    t.string "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "interests", force: :cascade do |t|
    t.string "address"
    t.string "website"
    t.integer "category"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "learnings", force: :cascade do |t|
    t.string "title"
    t.string "topic"
    t.string "city"
    t.integer "difficulty"
    t.integer "penality", default: 5
    t.integer "score"
    t.bigint "reward_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["reward_id"], name: "index_learnings_on_reward_id"
  end

  create_table "lectures", force: :cascade do |t|
    t.string "title"
    t.text "content"
    t.bigint "learning_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["learning_id"], name: "index_lectures_on_learning_id"
  end

  create_table "options", force: :cascade do |t|
    t.string "content"
    t.boolean "good"
    t.bigint "question_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["question_id"], name: "index_options_on_question_id"
  end

  create_table "questions", force: :cascade do |t|
    t.text "content"
    t.boolean "validate"
    t.bigint "learning_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["learning_id"], name: "index_questions_on_learning_id"
  end

  create_table "rewards", force: :cascade do |t|
    t.boolean "validate"
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_rewards_on_user_id"
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

  add_foreign_key "answers", "options"
  add_foreign_key "answers", "questions"
  add_foreign_key "answers", "users"
  add_foreign_key "learnings", "rewards"
  add_foreign_key "lectures", "learnings"
  add_foreign_key "options", "questions"
  add_foreign_key "questions", "learnings"
  add_foreign_key "rewards", "users"
end
