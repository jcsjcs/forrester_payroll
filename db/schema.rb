# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20090628150633) do

  create_table "pay_grades", :force => true do |t|
    t.string   "pay_grade",   :null => false
    t.string   "description"
    t.datetime "valid_from",  :null => false
    t.datetime "valid_until", :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "created_by",  :null => false
    t.string   "updated_by"
  end

  add_index "pay_grades", ["pay_grade", "valid_from"], :name => "index_pay_grades_on_pay_grade_and_valid_from", :unique => true

end
