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

ActiveRecord::Schema.define(version: 20170618231740) do

  create_table "conversion_factors", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "food_items", id: :integer, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer "restaurant"
    t.string "name", limit: 64
    t.string "orderNo", limit: 64
    t.string "distributor", limit: 64
    t.decimal "unitPrice", precision: 65, scale: 30
    t.integer "unitType"
    t.decimal "unitSize", precision: 65, scale: 30
    t.decimal "pricePerUnit", precision: 65, scale: 30
    t.string "locations", limit: 256
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "restaurants", id: :integer, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string "name", limit: 64
    t.string "city", limit: 64
    t.string "state", limit: 32
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "unit_conversions", id: :integer, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string "name", limit: 64
    t.decimal "toFlOz", precision: 65, scale: 30
    t.decimal "toGallons", precision: 65, scale: 30
    t.decimal "toLiters", precision: 65, scale: 30
    t.decimal "toWtOzs", precision: 65, scale: 30
    t.decimal "toPounds", precision: 65, scale: 30
    t.decimal "toGrams", precision: 65, scale: 30
  end

  create_table "users", id: :integer, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string "username", limit: 32
    t.string "firstname", limit: 64
    t.string "lastname", limit: 64
    t.string "passwd", limit: 256
    t.integer "restaurant"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
