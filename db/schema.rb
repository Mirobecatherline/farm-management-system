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

ActiveRecord::Schema[7.0].define(version: 2023_04_13_183110) do
  create_table "coffeberries", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "expenditures", force: :cascade do |t|
    t.integer "factory_id", null: false
    t.string "name"
    t.string "status"
    t.integer "factoryfarms_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["factory_id"], name: "index_expenditures_on_factory_id"
    t.index ["factoryfarms_id"], name: "index_expenditures_on_factoryfarms_id"
  end

  create_table "factories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "factoryfarmberries", force: :cascade do |t|
    t.integer "kg"
    t.string "season"
    t.integer "coffeberries_id", null: false
    t.integer "factoryfarms_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["coffeberries_id"], name: "index_factoryfarmberries_on_coffeberries_id"
    t.index ["factoryfarms_id"], name: "index_factoryfarmberries_on_factoryfarms_id"
  end

  create_table "factoryfarms", force: :cascade do |t|
    t.integer "factory_id", default: 1, null: false
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["factory_id"], name: "index_factoryfarms_on_factory_id"
  end

  create_table "farmerberries", force: :cascade do |t|
    t.string "season"
    t.integer "kg"
    t.integer "farmers_id", null: false
    t.integer "coffeberries_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["coffeberries_id"], name: "index_farmerberries_on_coffeberries_id"
    t.index ["farmers_id"], name: "index_farmerberries_on_farmers_id"
  end

  create_table "farmers", force: :cascade do |t|
    t.integer "phoneNo"
    t.integer "nationalId"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "workers", force: :cascade do |t|
    t.integer "factory_id", null: false
    t.string "name"
    t.string "role"
    t.integer "salary"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["factory_id"], name: "index_workers_on_factory_id"
  end

  add_foreign_key "expenditures", "factories"
  add_foreign_key "expenditures", "factoryfarms", column: "factoryfarms_id"
  add_foreign_key "factoryfarmberries", "coffeberries", column: "coffeberries_id"
  add_foreign_key "factoryfarmberries", "factoryfarms", column: "factoryfarms_id"
  add_foreign_key "factoryfarms", "factories"
  add_foreign_key "farmerberries", "coffeberries", column: "coffeberries_id"
  add_foreign_key "farmerberries", "farmers", column: "farmers_id"
  add_foreign_key "workers", "factories"
end
