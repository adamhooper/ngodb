# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of ActiveRecord to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20080519013650) do

  create_table "annual_budgets", :force => true do |t|
    t.string   "name",       :null => false
    t.string   "name_sw",    :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "csos", :force => true do |t|
    t.string   "name",                        :default => "", :null => false
    t.string   "abbreviation",                :default => "", :null => false
    t.string   "mailing_address",             :default => "", :null => false
    t.string   "physical_address",            :default => "", :null => false
    t.string   "physical_address_sw",         :default => "", :null => false
    t.string   "region",                      :default => "", :null => false
    t.string   "district",                    :default => "", :null => false
    t.string   "town",                        :default => "", :null => false
    t.string   "telephone",                   :default => "", :null => false
    t.string   "mobile",                      :default => "", :null => false
    t.string   "fax",                         :default => "", :null => false
    t.string   "email",                       :default => "", :null => false
    t.string   "website",                     :default => "", :null => false
    t.string   "head_person",                 :default => "", :null => false
    t.string   "contact_person",              :default => "", :null => false
    t.string   "contact_person_position",     :default => "", :null => false
    t.string   "contact_person_position_sw",  :default => "", :null => false
    t.integer  "num_staff_male"
    t.integer  "num_staff_female"
    t.integer  "num_volunteers_male"
    t.integer  "num_volunteers_female"
    t.string   "registration_number",         :default => "", :null => false
    t.integer  "registration_year"
    t.integer  "registration_act_id"
    t.string   "registration_act_other",      :default => "", :null => false
    t.string   "registration_act_other_sw",   :default => "", :null => false
    t.integer  "membership_type_id",                          :null => false
    t.string   "networks",                    :default => "", :null => false
    t.integer  "annual_budget_id",                            :null => false
    t.string   "grant_funders",               :default => "", :null => false
    t.string   "grant_funders_sw",            :default => "", :null => false
    t.string   "target_groups_other",         :default => "", :null => false
    t.string   "target_groups_other_sw",      :default => "", :null => false
    t.string   "sector_focuses_other",        :default => "", :null => false
    t.string   "sector_focuses_other_sw",     :default => "", :null => false
    t.integer  "operational_area_id",                         :null => false
    t.string   "operational_area_details",    :default => "", :null => false
    t.string   "operational_area_details_sw", :default => "", :null => false
    t.boolean  "urban_focus",                                 :null => false
    t.boolean  "rural_focus",                                 :null => false
    t.text     "mission_statement",           :default => "", :null => false
    t.text     "mission_statement_sw",        :default => "", :null => false
    t.text     "vision_statement",            :default => "", :null => false
    t.text     "vision_statement_sw",         :default => "", :null => false
    t.text     "main_objectives",             :default => "", :null => false
    t.text     "main_objectives_sw",          :default => "", :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "csos_sector_focuses", :id => false, :force => true do |t|
    t.integer "cso_id"
    t.integer "sector_focus_id"
  end

  add_index "csos_sector_focuses", ["cso_id", "sector_focus_id"], :name => "index_csos_sector_focuses_on_cso_id_and_sector_focus_id", :unique => true
  add_index "csos_sector_focuses", ["sector_focus_id"], :name => "index_csos_sector_focuses_on_sector_focus_id"
  add_index "csos_sector_focuses", ["cso_id"], :name => "index_csos_sector_focuses_on_cso_id"

  create_table "csos_target_groups", :id => false, :force => true do |t|
    t.integer "cso_id"
    t.integer "target_group_id"
  end

  add_index "csos_target_groups", ["cso_id", "target_group_id"], :name => "index_csos_target_groups_on_cso_id_and_target_group_id", :unique => true
  add_index "csos_target_groups", ["target_group_id"], :name => "index_csos_target_groups_on_target_group_id"
  add_index "csos_target_groups", ["cso_id"], :name => "index_csos_target_groups_on_cso_id"

  create_table "funding_sources", :force => true do |t|
    t.string   "name",       :null => false
    t.string   "name_sw",    :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "membership_types", :force => true do |t|
    t.string   "name",       :null => false
    t.string   "name_sw",    :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "operational_areas", :force => true do |t|
    t.string   "name"
    t.string   "name_sw"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "registration_acts", :force => true do |t|
    t.string   "name",       :null => false
    t.string   "name_sw",    :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sector_focuses", :force => true do |t|
    t.string   "name",       :null => false
    t.string   "name_sw",    :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "target_groups", :force => true do |t|
    t.string   "name",       :null => false
    t.string   "name_sw",    :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
