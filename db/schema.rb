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

ActiveRecord::Schema.define(version: 2021_04_07_033010) do

  create_table "admins", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "company"
    t.string "postal_code"
    t.string "address"
    t.string "telephone"
    t.index ["email"], name: "index_admins_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true
  end

  create_table "customers", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "company"
    t.string "postal_code"
    t.string "address"
    t.string "telephone"
    t.index ["email"], name: "index_customers_on_email", unique: true
    t.index ["reset_password_token"], name: "index_customers_on_reset_password_token", unique: true
  end

  create_table "details", force: :cascade do |t|
    t.integer "estimate_id"
    t.integer "genre_id"
    t.string "product"
    t.string "model"
    t.integer "amount"
    t.integer "unitprice"
    t.string "remark"
    t.text "general_remark"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "estimates", force: :cascade do |t|
    t.date "date"
    t.integer "incharge_id"
    t.string "subject"
    t.integer "payment_method"
    t.string "delivery_time"
    t.integer "detail1"
    t.integer "genre_id1"
    t.string "product1"
    t.string "model1"
    t.integer "amount1"
    t.integer "unit_price1"
    t.boolean "recruit1"
    t.integer "detail2"
    t.integer "genre_id2"
    t.string "product2"
    t.string "model2"
    t.integer "amount2"
    t.integer "unit_price2"
    t.boolean "recruit2"
    t.integer "detail3"
    t.integer "genre_id3"
    t.string "product3"
    t.string "model3"
    t.integer "amount3"
    t.integer "unit_price3"
    t.boolean "recruit3"
    t.integer "detail4"
    t.integer "genre_id4"
    t.string "product4"
    t.string "model4"
    t.integer "amount4"
    t.integer "unit_price4"
    t.boolean "recruit4"
    t.integer "detail5"
    t.integer "genre_id5"
    t.string "product5"
    t.string "model5"
    t.integer "amount5"
    t.integer "unit_price5"
    t.boolean "recruit5"
    t.integer "detail6"
    t.integer "genre_id6"
    t.string "product6"
    t.string "model6"
    t.integer "amount6"
    t.integer "unit_price6"
    t.boolean "recruit6"
    t.integer "detail7"
    t.integer "genre_id7"
    t.string "product7"
    t.string "model7"
    t.integer "amount7"
    t.integer "unit_price7"
    t.boolean "recruit7"
    t.integer "detail8"
    t.integer "genre_id8"
    t.string "product8"
    t.string "model8"
    t.integer "amount8"
    t.integer "unit_price8"
    t.boolean "recruit8"
    t.integer "detail9"
    t.integer "genre_id9"
    t.string "product9"
    t.string "model9"
    t.integer "amount9"
    t.integer "unit_price9"
    t.boolean "recruit9"
    t.integer "detail10"
    t.integer "genre_id10"
    t.string "product10"
    t.string "model10"
    t.integer "amount10"
    t.integer "unit_price10"
    t.boolean "recruit10"
    t.integer "detail11"
    t.integer "genre_id11"
    t.string "product11"
    t.string "model11"
    t.integer "amount11"
    t.integer "unit_price11"
    t.boolean "recruit11"
    t.integer "detail12"
    t.integer "genre_id12"
    t.string "product12"
    t.string "model12"
    t.integer "amount12"
    t.integer "unit_price12"
    t.boolean "recruit12"
    t.integer "detail13"
    t.integer "genre_id13"
    t.string "product13"
    t.string "model13"
    t.integer "amount13"
    t.integer "unit_price13"
    t.boolean "recruit13"
    t.integer "detail14"
    t.integer "genre_id14"
    t.string "product14"
    t.string "model14"
    t.integer "amount14"
    t.integer "unit_price14"
    t.boolean "recruit14"
    t.integer "detail15"
    t.integer "genre_id15"
    t.string "product15"
    t.string "model15"
    t.integer "amount15"
    t.integer "unit_price15"
    t.boolean "recruit15"
    t.integer "detail16"
    t.integer "genre_id16"
    t.string "product16"
    t.string "model16"
    t.integer "amount16"
    t.integer "unit_price16"
    t.boolean "recruit16"
    t.integer "detail17"
    t.integer "genre_id17"
    t.string "product17"
    t.string "model17"
    t.integer "amount17"
    t.integer "unit_price17"
    t.boolean "recruit17"
    t.integer "detail18"
    t.integer "genre_id18"
    t.string "product18"
    t.string "model18"
    t.integer "amount18"
    t.integer "unit_price18"
    t.boolean "recruit18"
    t.integer "detail19"
    t.integer "genre_id19"
    t.string "product19"
    t.string "model19"
    t.integer "amount19"
    t.integer "unit_price19"
    t.boolean "recruit19"
    t.integer "detail20"
    t.integer "genre_id20"
    t.string "product20"
    t.string "model20"
    t.integer "amount20"
    t.integer "unit_price20"
    t.boolean "recruit20"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "genres", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "in_charges", force: :cascade do |t|
    t.integer "customer_id"
    t.string "Department"
    t.string "name"
    t.string "telephone"
    t.string "email"
    t.string "postal_code"
    t.string "address"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "taxes", force: :cascade do |t|
    t.date "change_date"
    t.integer "tax"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
