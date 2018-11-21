require 'faker'

FactoryBot.define do
  factory :user do
    name { Faker::Name.name }
    city { Faker::Address.city }
    address { Faker::Address.street_address }
    country { Faker::Address.country }
    email { Faker::Internet.email }
    phone_primary { Faker::PhoneNumber.phone_number }
    phone_secondary { Faker::PhoneNumber.phone_number }
    postal_code { Faker::Address.postcode }
    province { Faker::Address.state }
    password { 'password' }
    password_confirmation { 'password' }

    factory :user_with_pet do
      after(:create) { |user| create(:pet, user: user) }
    end

    factory :user_with_pets do
      transient do
        pets_count { 5 }
      end
      after(:create) do |user, evaluator|
        create_list(:pet, evaluator.pets_count, user: user)
      end
    end
  end
end
