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

ActiveRecord::Schema.define(version: 20161130211556) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "articles", force: :cascade do |t|
    t.string   "titre"
    t.text     "content"
    t.integer  "year"
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
    t.string   "audio_file_name"
    t.string   "audio_content_type"
    t.integer  "audio_file_size"
    t.datetime "audio_updated_at"
    t.string   "video_file_name"
    t.string   "video_content_type"
    t.integer  "video_file_size"
    t.datetime "video_updated_at"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "articles_notions", force: :cascade do |t|
    t.integer "notion_id"
    t.integer "article_id"
    t.index ["article_id"], name: "index_articles_notions_on_article_id", using: :btree
    t.index ["notion_id"], name: "index_articles_notions_on_notion_id", using: :btree
  end

  create_table "comments", force: :cascade do |t|
    t.string   "name"
    t.date     "birthday"
    t.text     "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "comment_id"
    t.index ["comment_id"], name: "index_comments_on_comment_id", using: :btree
  end

  create_table "notions", force: :cascade do |t|
    t.string   "name"
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  add_foreign_key "comments", "comments"
end
