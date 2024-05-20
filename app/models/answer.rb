# frozen_string_literal: true

class Answer < ApplicationRecord # :nodoc:
  validates :text, presence: true
  validates :is_correct, inclusion: { in: [true, false] }

  belongs_to :question
end
