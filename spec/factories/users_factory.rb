# frozen_string_literal: true

FactoryBot.define do
  factory :user do
    sequence(:email) { |n| "user#{n}@example.com" }
    password { 'root12345' }
    password_confirmation { 'root12345' }
    name { 'Default' }
    last_name { 'User' }
    phone_number { '123456789' }
    user_type

    trait :admin do
      id { 1 }
      email { 'admin@email.com' }
      name { 'Admin' }
      user_type { association :user_type, :admin }
    end

    trait :default_user do
      email { 'default@email.com' }
      phone_number { '123456755' }
      user_type { association :user_type, :default }
    end
  end
end
