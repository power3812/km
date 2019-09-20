ActiveRecord::Schema.define(version: 20190920203610) do

  create_table "colors", force: :cascade do |t|
    t.text "name"
    t.text "image"
    t.integer "r"
    t.integer "g"
    t.integer "b"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "histories", force: :cascade do |t|
    t.integer "r"
    t.integer "g"
    t.integer "b"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
