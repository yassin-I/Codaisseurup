FactoryGirl.define do
  factory :event do
    event_type         "Walking in Amsterdam"
    description         "cool"
    accommodate       2
    bedroom_count     2
    bathroom_count    3
    listing_name      { Faker::Lorem.sentence(1) }
    description       { Faker::Lorem.sentence(40) }
    address           { Faker::Address.city }
    has_tv            true
    has_kitchen       true
    has_airco         true
    has_heating       true
    has_internet      true
    price             { Faker::Commerce.price }
    user              { build(:user) }

    trait :active do
      active true
    end

    trait :inactive do
      active false
    end
  end
end
