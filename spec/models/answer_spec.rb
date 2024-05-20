# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Answer, type: :model do
  describe 'validations' do
    it { should validate_presence_of(:text) }
    it { should allow_value(true).for(:is_correct) }
    it { should allow_value(false).for(:is_correct) }
    it { should_not allow_value(nil).for(:is_correct) }
  end

  describe 'associations' do
    it { should belong_to(:question) }
  end
end
