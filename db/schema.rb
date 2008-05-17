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

ActiveRecord::Schema.define(:version => 20080517195531) do

  create_table "annual_budgets", :force => true do |t|
    t.string   "name",       :null => false
    t.string   "name_sw",    :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

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
