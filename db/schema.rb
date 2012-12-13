# encoding: UTF-8
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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20121205192228) do

  create_table "MSreplication_options", :id => false, :force => true do |t|
    t.string  "optname",          :limit => 128, :null => false
    t.boolean "value",                           :null => false
    t.integer "major_version",                   :null => false
    t.integer "minor_version",                   :null => false
    t.integer "revision",                        :null => false
    t.integer "install_failures",                :null => false
  end

  create_table "high_scores", :force => true do |t|
    t.string   "game"
    t.integer  "score"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "spt_fallback_db", :id => false, :force => true do |t|
    t.string   "xserver_name",       :limit => 30, :null => false
    t.datetime "xdttm_ins",                        :null => false
    t.datetime "xdttm_last_ins_upd",               :null => false
    t.integer  "xfallback_dbid",     :limit => 2
    t.string   "name",               :limit => 30, :null => false
    t.integer  "dbid",               :limit => 2,  :null => false
    t.integer  "status",             :limit => 2,  :null => false
    t.integer  "version",            :limit => 2,  :null => false
  end

  create_table "spt_fallback_dev", :id => false, :force => true do |t|
    t.string   "xserver_name",       :limit => 30,  :null => false
    t.datetime "xdttm_ins",                         :null => false
    t.datetime "xdttm_last_ins_upd",                :null => false
    t.integer  "xfallback_low"
    t.string   "xfallback_drive",    :limit => 2
    t.integer  "low",                               :null => false
    t.integer  "high",                              :null => false
    t.integer  "status",             :limit => 2,   :null => false
    t.string   "name",               :limit => 30,  :null => false
    t.string   "phyname",            :limit => 127, :null => false
  end

  create_table "spt_fallback_usg", :id => false, :force => true do |t|
    t.string   "xserver_name",       :limit => 30, :null => false
    t.datetime "xdttm_ins",                        :null => false
    t.datetime "xdttm_last_ins_upd",               :null => false
    t.integer  "xfallback_vstart"
    t.integer  "dbid",               :limit => 2,  :null => false
    t.integer  "segmap",                           :null => false
    t.integer  "lstart",                           :null => false
    t.integer  "sizepg",                           :null => false
    t.integer  "vstart",                           :null => false
  end

  create_table "spt_monitor", :id => false, :force => true do |t|
    t.datetime "lastrun",       :null => false
    t.integer  "cpu_busy",      :null => false
    t.integer  "io_busy",       :null => false
    t.integer  "idle",          :null => false
    t.integer  "pack_received", :null => false
    t.integer  "pack_sent",     :null => false
    t.integer  "connections",   :null => false
    t.integer  "pack_errors",   :null => false
    t.integer  "total_read",    :null => false
    t.integer  "total_write",   :null => false
    t.integer  "total_errors",  :null => false
  end

  create_table "spt_values", :id => false, :force => true do |t|
    t.string  "name",   :limit => 35
    t.integer "number",                              :null => false
    t.string  "type",   :limit => 3,                 :null => false
    t.integer "low"
    t.integer "high"
    t.integer "status",               :default => 0
  end

  add_index "spt_values", ["number", "type"], :name => "ix2_spt_values_nu_nc"
  add_index "spt_values", ["type", "number", "name"], :name => "spt_valuesclust", :unique => true

end
