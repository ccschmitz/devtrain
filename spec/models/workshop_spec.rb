require 'rails_helper'

describe Workshop do
  describe '#attributes' do
    it { should respond_to(:name) }
    it { should respond_to(:description) }
    it { should respond_to(:starts_at) }
    it { should respond_to(:ends_at) }
  end

  describe '#valid?' do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:description) }
  end
end