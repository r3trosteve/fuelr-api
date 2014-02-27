FactoryGirl.define do
  factory :product do
    name "Core workout for pregnant developers"
    description "This is the newest post. It needs 20 char to be saved."
    featured false
    image "http://someimage.jpg"
    vimeo_id "http://vimeo.com/123456"
  end
end

	# t.string   "name",                        null: false
 #    t.text     "description"
 #    t.boolean  "featured",    default: false
 #    t.string   "image"
 #    t.string   "vimeo_id"
 #    t.datetime "created_at"
 #    t.datetime "updated_at"