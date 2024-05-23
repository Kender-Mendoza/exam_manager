# frozen_string_literal: true

FactoryBot.define do
  factory :exam do
    title { 'Sample Exam' }
    test_score { 100.0 }
    date_of_realization { Date.today }

    after(:create) do |exam|
      create_list(:question, 3, exam:)
    end
  end
end
