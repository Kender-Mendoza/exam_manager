# frozen_string_literal: true

class Exam < ApplicationRecord # :nodoc:
  validates :title, presence: true
  validates :test_score, presence: true, numericality: true
  validates :date_of_realization, presence: true

  has_many :questions, dependent: :destroy, inverse_of: :question
  accepts_nested_attributes_for :questions, allow_destroy: true
end
