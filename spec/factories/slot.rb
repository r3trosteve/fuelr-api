FactoryGirl.define do
  factory :slot do
    start_time Time.now
    end_time Time.now + 40.minutes
    day_of_week "Thursday"
    capacity 6
    product
  end
end