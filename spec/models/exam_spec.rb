require 'rails_helper'

RSpec.describe Exam, type: :model do
  describe 'validations' do
    it { should validate_presence_of(:title) }
    it { should validate_presence_of(:test_score) }
    it { should validate_numericality_of(:test_score) }
    it { should validate_presence_of(:date_of_realization) }
  end

  describe 'associations' do
    it { should have_many(:questions) }
  end
end
