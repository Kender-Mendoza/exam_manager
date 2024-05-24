# frozen_string_literal: true

class Exam < ApplicationRecord # :nodoc:
  validates :title, presence: true
  validates :test_score, presence: true, numericality: true
  validates :date_of_realization, presence: true

  has_many :questions
end
