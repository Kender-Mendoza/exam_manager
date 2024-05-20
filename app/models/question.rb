# frozen_string_literal: true

class Question < ApplicationRecord # :nodoc:
  validates :type, presence: true
  validates :text, presence: true
  validates :score, presence: true, numericality: true
  validates :is_scorable, inclusion: { in: [true, false] }

  belongs_to :exam
  has_many :answers
end
