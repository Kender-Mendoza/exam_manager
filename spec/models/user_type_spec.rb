# frozen_string_literal: true

require 'rails_helper'

RSpec.describe UserType, type: :model do
  describe 'validations' do
    it { should validate_presence_of(:name) }
    it { should validate_uniqueness_of(:name) }
  end

  describe 'constants' do
    it 'defines ADMIN as 1' do
      expect(UserType::ADMIN).to eq(1)
    end

    it 'defines DEFAULT as 2' do
      expect(UserType::DEFAULT).to eq(2)
    end
  end
end
