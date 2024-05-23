# frozen_string_literal: true

FactoryBot.define do
  factory :user_type do
    sequence(:name) { |n| "UserType#{n}" }

    trait :admin do
      id { UserType::ADMIN }
      name { 'Admin' }
    end

    trait :default do
      id { UserType::DEFAULT }
      name { 'Default' }
    end
  end
end
