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

ActiveRecord::Schema.define(version: 2022_11_11_151939) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "action_text_rich_texts", force: :cascade do |t|
    t.string "name", null: false
    t.text "body"
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["record_type", "record_id", "name"], name: "index_action_text_rich_texts_uniqueness", unique: true
  end

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.string "service_name", null: false
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "active_storage_variant_records", force: :cascade do |t|
    t.bigint "blob_id", null: false
    t.string "variation_digest", null: false
    t.index ["blob_id", "variation_digest"], name: "index_active_storage_variant_records_uniqueness", unique: true
  end

  create_table "companies", force: :cascade do |t|
    t.string "address"
    t.string "phone"
    t.string "email1"
    t.string "email2"
    t.string "facebook"
    t.string "instagram"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "phone_name"
    t.string "phone2"
    t.string "phone2_name"
    t.string "phone3"
    t.string "phone3_name"
    t.string "url_google_maps"
    t.string "email_notice_contact"
  end

  create_table "contact_forms", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "phone"
    t.text "message"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "confirm_email"
  end

  create_table "delayed_jobs", force: :cascade do |t|
    t.integer "priority", default: 0, null: false
    t.integer "attempts", default: 0, null: false
    t.text "handler", null: false
    t.text "last_error"
    t.datetime "run_at"
    t.datetime "locked_at"
    t.datetime "failed_at"
    t.string "locked_by"
    t.string "queue"
    t.datetime "created_at", precision: 6
    t.datetime "updated_at", precision: 6
    t.index ["priority", "run_at"], name: "delayed_jobs_priority"
  end

  create_table "etline_icons", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "frezarimdf_categories", force: :cascade do |t|
    t.string "name"
    t.string "data_icon"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "icon_id", null: false
    t.string "slug"
    t.index ["icon_id"], name: "index_frezarimdf_categories_on_icon_id"
    t.index ["slug"], name: "index_frezarimdf_categories_on_slug", unique: true
  end

  create_table "frezarimdfs", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.text "image"
    t.bigint "frezarimdf_category_id", null: false
    t.string "slug"
    t.index ["frezarimdf_category_id"], name: "index_frezarimdfs_on_frezarimdf_category_id"
    t.index ["slug"], name: "index_frezarimdfs_on_slug", unique: true
  end

  create_table "friendly_id_slugs", force: :cascade do |t|
    t.string "slug", null: false
    t.integer "sluggable_id", null: false
    t.string "sluggable_type", limit: 50
    t.string "scope"
    t.datetime "created_at"
    t.index ["slug", "sluggable_type", "scope"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type_and_scope", unique: true
    t.index ["slug", "sluggable_type"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type"
    t.index ["sluggable_type", "sluggable_id"], name: "index_friendly_id_slugs_on_sluggable_type_and_sluggable_id"
  end

  create_table "icons", force: :cascade do |t|
    t.string "letter"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "product_categories", force: :cascade do |t|
    t.string "name"
    t.string "title"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "data_icon"
    t.bigint "icon_id", null: false
    t.string "slug"
    t.index ["icon_id"], name: "index_product_categories_on_icon_id"
    t.index ["slug"], name: "index_product_categories_on_slug", unique: true
  end

  create_table "products", force: :cascade do |t|
    t.string "name"
    t.string "price"
    t.string "dimensions"
    t.string "material"
    t.string "accessories"
    t.string "color"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "product_category_id", null: false
    t.string "slug"
    t.index ["product_category_id"], name: "index_products_on_product_category_id"
    t.index ["slug"], name: "index_products_on_slug", unique: true
  end

  create_table "project_categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "slug"
    t.index ["slug"], name: "index_project_categories_on_slug", unique: true
  end

  create_table "project_categories_projects", id: false, force: :cascade do |t|
    t.bigint "project_category_id", null: false
    t.bigint "project_id", null: false
  end

  create_table "projects", force: :cascade do |t|
    t.string "name"
    t.string "author"
    t.date "date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "slug"
    t.index ["slug"], name: "index_projects_on_slug", unique: true
  end

  create_table "promotions", force: :cascade do |t|
    t.string "title"
    t.string "title_color", default: "#E5AE49"
    t.date "start_date"
    t.date "end_date"
    t.boolean "is_active", default: true
    t.string "btn_text", default: "Mergi la website"
    t.string "btn_url", default: "https://www.enocis.ro"
    t.string "bg_color", default: "#000000"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "services", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "etline_icon_id", null: false
    t.index ["etline_icon_id"], name: "index_services_on_etline_icon_id"
  end

  create_table "social_projects", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "slug"
    t.index ["slug"], name: "index_social_projects_on_slug", unique: true
  end

  create_table "testimonials", force: :cascade do |t|
    t.string "name"
    t.string "title"
    t.text "comment"
    t.boolean "approved", default: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "email"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.integer "role"
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "youtubes", force: :cascade do |t|
    t.string "url"
    t.bigint "service_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["service_id"], name: "index_youtubes_on_service_id"
  end

  create_table "youtubesps", force: :cascade do |t|
    t.string "url"
    t.bigint "social_project_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["social_project_id"], name: "index_youtubesps_on_social_project_id"
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "active_storage_variant_records", "active_storage_blobs", column: "blob_id"
  add_foreign_key "frezarimdf_categories", "icons"
  add_foreign_key "frezarimdfs", "frezarimdf_categories"
  add_foreign_key "product_categories", "icons"
  add_foreign_key "products", "product_categories"
  add_foreign_key "services", "etline_icons"
  add_foreign_key "youtubes", "services"
  add_foreign_key "youtubesps", "social_projects"
end
