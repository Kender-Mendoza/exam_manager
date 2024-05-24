# frozen_string_literal: true

class Question < ApplicationRecord # :nodoc:
  TYPE_OPTIONS = %w[
    free_text
    multiple_choice
    single_choice
  ].freeze

  validates :type_name, presence: true, inclusion: { in: TYPE_OPTIONS }
  validates :text, presence: true
  validates :score, presence: true, numericality: true
  validates :is_scorable, inclusion: { in: [true, false] }

  belongs_to :exam

  has_many :answers, dependent: :destroy
  accepts_nested_attributes_for :answers, allow_destroy: true
end
