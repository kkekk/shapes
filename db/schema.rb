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

ActiveRecord::Schema.define(version: 2019_04_30_131453) do

  create_table "shape_infos", force: :cascade do |t|
    t.integer "order", null: false
    t.decimal "value", null: false
    t.integer "type", null: false
    t.integer "shape_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["shape_id", "order"], name: "index_shape_infos_on_shape_id_and_order", unique: true
    t.index ["shape_id"], name: "index_shape_infos_on_shape_id"
  end

  create_table "shapes", force: :cascade do |t|
    t.integer "length", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
