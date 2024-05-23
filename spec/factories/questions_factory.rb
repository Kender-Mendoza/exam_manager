# frozen_string_literal: true

FactoryBot.define do
  factory :question do
    type { 'multiple_choice' }
    text { 'Sample question text' }
    score { 10.0 }
    is_scorable { true }
    exam

    after(:create) do |question|
      create_list(:answer, 3, question:)
    end
  end
end
