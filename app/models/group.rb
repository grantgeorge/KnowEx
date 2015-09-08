class Group < ActiveRecord::Base
  has_and_belongs_to_many :users
  has_many :posts, through: :users
end

# create_table "groups", force: :cascade do |t|
#   t.string   "name"
#   t.string   "location"
#   t.datetime "created_at", null: false
#   t.datetime "updated_at", null: false
# end
