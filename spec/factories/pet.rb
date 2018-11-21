require 'faker'

FactoryBot.define do
  factory :pet do
    name { Faker::Creature::Dog.name }
    chip_number { Faker::Number.number(15) }
    species { Faker::Lorem.word }
  end
end
