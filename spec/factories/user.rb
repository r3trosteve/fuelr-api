FactoryGirl.define do
  factory :user do
    email "steve@example.com"
    first_name "steve"
    last_name "schofield"
    password "helloworld"
    password_confirmation "helloworld"
  end
end

# 	  t.string   "email",           null: false
#     t.string   "first_name"
#     t.string   "last_name"
#     t.string   "password_digest"