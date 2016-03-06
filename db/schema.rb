# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20160306132717) do

  create_table "bets", force: :cascade do |t|
    t.integer  "pot_id"
    t.integer  "value"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "bets", ["pot_id"], name: "index_bets_on_pot_id"
  add_index "bets", ["user_id"], name: "index_bets_on_user_id"

  create_table "cards", force: :cascade do |t|
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.string   "card_collection_type"
    t.integer  "card_collection_id"
    t.string   "color"
    t.integer  "value"
  end

  add_index "cards", ["card_collection_type", "card_collection_id"], name: "index_cards_on_card_collection_type_and_card_collection_id"

  create_table "decks", force: :cascade do |t|
    t.integer  "game_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "decks", ["game_id"], name: "index_decks_on_game_id"

  create_table "games", force: :cascade do |t|
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "small_blind"
    t.integer  "players_num"
    t.string   "comment"
  end

  create_table "hands", force: :cascade do |t|
    t.integer  "playing_session_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  add_index "hands", ["playing_session_id"], name: "index_hands_on_playing_session_id"

  create_table "histories", force: :cascade do |t|
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "histories", ["user_id"], name: "index_histories_on_user_id"

  create_table "notifications", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "content"
    t.datetime "read"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "notifications", ["user_id"], name: "index_notifications_on_user_id"

  create_table "playing_sessions", force: :cascade do |t|
    t.integer  "game_id"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "playing_sessions", ["game_id"], name: "index_playing_sessions_on_game_id"
  add_index "playing_sessions", ["user_id"], name: "index_playing_sessions_on_user_id"

  create_table "pots", force: :cascade do |t|
    t.integer  "game_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "pots", ["game_id"], name: "index_pots_on_game_id"

  create_table "results", force: :cascade do |t|
    t.integer  "history_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "results", ["history_id"], name: "index_results_on_history_id"

  create_table "scores", force: :cascade do |t|
    t.integer  "result_id"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "earnings"
  end

  add_index "scores", ["result_id"], name: "index_scores_on_result_id"
  add_index "scores", ["user_id"], name: "index_scores_on_user_id"

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "username"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
