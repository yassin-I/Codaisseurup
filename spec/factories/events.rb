FactoryGirl.define do
  factory :event do
    event_type         "Walking in Amsterdam"
    description        "Stages"
    location            1
    capacity            10
    starts_at           Time.now
    ends_at             2.hours.from_now
    includes_food       true
    includes_drinks     true
    has_airco           true
    has_heating         true
    has_internet        true
    price              { Faker::Commerce.price }
    user               { build(:user) }

    trait :active do
      active true
    end

    trait :inactive do
      active false

    end
  end
end
