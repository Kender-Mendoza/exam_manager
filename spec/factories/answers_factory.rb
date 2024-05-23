# frozen_string_literal: true

FactoryBot.define do
  factory :answer do
    text { 'Sample answer text' }
    is_correct { false }
    question
  end
end
