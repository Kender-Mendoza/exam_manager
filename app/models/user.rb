# frozen_string_literal: true

class User < ApplicationRecord # :nodoc:
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :name, presence: true
  validates :last_name, presence: true
  validates :phone_number, presence: true, uniqueness: true, format: { with: /\A\d{9}\z/, message: 'must be 9 digits' }

  belongs_to :user_type
end
