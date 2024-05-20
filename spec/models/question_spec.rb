# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Question, type: :model do
  describe 'validations' do
    it { should validate_presence_of(:type) }
    it { should validate_presence_of(:text) }
    it { should validate_presence_of(:score) }
    it { should validate_numericality_of(:score) }
    it { should allow_value(true).for(:is_scorable) }
    it { should allow_value(false).for(:is_scorable) }
    it { should_not allow_value(nil).for(:is_scorable) }
  end

  describe 'associations' do
    it { should belong_to(:exam) }
    it { should have_many(:answers) }
  end
end
