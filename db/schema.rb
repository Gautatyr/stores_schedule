
ActiveRecord::Schema[7.0].define(version: 2023_01_23_102837) do
  create_table "schedules", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "shop_id", null: false
    t.string "dimanche"
    t.string "samedi"
    t.string "vendredi"
    t.string "jeudi"
    t.string "mercredi"
    t.string "mardi"
    t.string "lundi"
    t.index ["shop_id"], name: "index_schedules_on_shop_id"
  end

  create_table "shops", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "schedules", "shops"
end
