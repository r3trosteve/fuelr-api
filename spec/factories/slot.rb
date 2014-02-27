FactoryGirl.define do
  factory :slot do
    product

    start_time 		{ Time.now }
    end_time 		{ Time.now + 40.minutes }
    day_of_week 	{ "Thursday" }
    capacity 		{ 6 }

    factory :unavailable_slot do
    	capacity 	0
    end
  end
end