# frozen_string_literal: true

class UserType < ApplicationRecord # :nodoc:
  ADMIN = 1
  DEFAULT = 2
  validates :name, presence: true, uniqueness: true
end
