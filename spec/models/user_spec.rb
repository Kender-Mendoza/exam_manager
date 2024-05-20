# frozen_string_literal: true

require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'validations' do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:last_name) }
    it { should validate_presence_of(:phone_number) }
    it { should validate_uniqueness_of(:phone_number) }
    it { should allow_value('123456789').for(:phone_number) }
    it { should_not allow_value('12345').for(:phone_number) }
    it { should_not allow_value('abcdefghij').for(:phone_number) }
  end

  describe 'associations' do
    it { should belong_to(:user_type) }
  end

  describe 'Devise modules' do
    it { should respond_to(:email) }
    it { should respond_to(:encrypted_password) }
    it { should respond_to(:reset_password_token) }
    it { should respond_to(:reset_password_sent_at) }
    it { should respond_to(:remember_created_at) }
  end
end
