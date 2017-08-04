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

ActiveRecord::Schema.define(version: 20170804102643) do

  create_table "account", id: :integer, default: nil, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
  end

  create_table "box", id: :integer, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer "account_id", null: false
    t.date "delivery_date", null: false
    t.index ["account_id"], name: "account_id"
    t.index ["delivery_date"], name: "date"
  end

  create_table "box_to_product", primary_key: ["product_id", "box_id"], force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer "product_id", null: false
    t.integer "box_id", null: false
    t.index ["box_id"], name: "delivery_id"
  end

  create_table "product", id: :integer, default: nil, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string "name", null: false
    t.string "category", null: false
    t.string "image_url", null: false
  end

  create_table "rating", primary_key: ["product_id", "account_id"], force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer "product_id", null: false
    t.integer "account_id", null: false
    t.integer "rating", null: false
    t.index ["account_id"], name: "account_id"
  end

  create_table "widgets", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
