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

ActiveRecord::Schema.define(version: 20171006152226) do

  create_table "campaigns", force: :cascade do |t|
    t.string "name"
    t.integer "character_ids"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.string "description"
    t.index ["user_id"], name: "index_campaigns_on_user_id"
  end

  create_table "campaigns_characters", force: :cascade do |t|
    t.integer "character_id"
    t.integer "campaign_id"
    t.index ["campaign_id"], name: "index_campaigns_characters_on_campaign_id"
    t.index ["character_id"], name: "index_campaigns_characters_on_character_id"
  end

  create_table "characters", force: :cascade do |t|
    t.string "name"
    t.integer "player_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "race"
    t.string "class_name"
    t.integer "level"
    t.integer "strength"
    t.integer "dexterity"
    t.integer "constitution"
    t.integer "intelligence"
    t.integer "wisdom"
    t.integer "charisma"
    t.integer "campaign_id"
    t.integer "race_id"
    t.integer "class_name_id"
    t.index ["campaign_id"], name: "index_characters_on_campaign_id"
    t.index ["class_name_id"], name: "index_characters_on_class_name_id"
    t.index ["race_id"], name: "index_characters_on_race_id"
  end

  create_table "characters_skills", force: :cascade do |t|
    t.integer "character_id"
    t.integer "skill_id"
    t.index ["character_id"], name: "index_characters_skills_on_character_id"
    t.index ["skill_id"], name: "index_characters_skills_on_skill_id"
  end

  create_table "characters_spells", force: :cascade do |t|
    t.integer "character_id"
    t.integer "spell_id"
    t.index ["character_id"], name: "index_characters_spells_on_character_id"
    t.index ["spell_id"], name: "index_characters_spells_on_spell_id"
  end

  create_table "class_names", force: :cascade do |t|
    t.string "name"
    t.string "api_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "class_names_spells", force: :cascade do |t|
    t.integer "class_name_id"
    t.integer "spell_id"
    t.index ["class_name_id"], name: "index_class_names_spells_on_class_name_id"
    t.index ["spell_id"], name: "index_class_names_spells_on_spell_id"
  end

  create_table "messages", force: :cascade do |t|
    t.string "content"
    t.integer "user_id"
    t.integer "campaign_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["campaign_id"], name: "index_messages_on_campaign_id"
    t.index ["user_id"], name: "index_messages_on_user_id"
  end

  create_table "notes", force: :cascade do |t|
    t.string "content"
    t.integer "campaign_id"
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["campaign_id"], name: "index_notes_on_campaign_id"
  end

  create_table "races", force: :cascade do |t|
    t.string "name"
    t.string "api_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "speed"
    t.string "ability_bonuses"
    t.string "alignment"
    t.string "age"
    t.string "size"
    t.string "languages"
  end

  create_table "skills", force: :cascade do |t|
    t.string "name"
    t.string "desc"
    t.string "ability_score"
    t.string "api_url"
  end

  create_table "spells", force: :cascade do |t|
    t.string "name"
    t.string "api_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "traits", force: :cascade do |t|
    t.string "name"
    t.string "api_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email"
    t.string "password_digest"
    t.string "username"
  end

end
