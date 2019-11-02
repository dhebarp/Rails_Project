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

ActiveRecord::Schema.define(version: 2019_11_01_231342) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "articles", force: :cascade do |t|
    t.string "source"
    t.string "author"
    t.string "title"
    t.string "description"
    t.string "url"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "articles_stocks", id: false, force: :cascade do |t|
    t.bigint "stock_id", null: false
    t.bigint "article_id", null: false
  end

  create_table "portfolios", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "portfolios_stocks", id: false, force: :cascade do |t|
    t.bigint "portfolio_id", null: false
    t.bigint "stock_id", null: false
  end

  create_table "portfolios_users", id: false, force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "portfolio_id", null: false
  end

  create_table "stocks", force: :cascade do |t|
    t.string "symbol"
    t.string "name"
    t.string "stock_type"
    t.string "region"
    t.string "currency"
    t.string "open"
    t.string "high"
    t.string "low"
    t.string "price"
    t.string "previous_close"
    t.string "change"
    t.string "change_percent"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
