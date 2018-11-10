FactoryBot.define do
  factory :person do
    trait :active do
      status :active
      first_name { Faker::FunnyName.name }
    end

    trait :inactive do
      status :inactive
      first_name { Faker::FunnyName.name }
    end
  end
end
