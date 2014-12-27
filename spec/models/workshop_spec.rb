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

  describe '.upcoming' do
    before do
      FactoryGirl.create_list(:workshop, 2, starts_at: Time.now - 10.minutes)
    end

    it 'only returns workshops that have not happened yet' do
      expect(Workshop.upcoming.count).to eq(0)
      Workshop.first.update_attributes!(starts_at: Time.now + 10.minutes)
      expect(Workshop.upcoming.count).to eq(1)
      Workshop.last.update_attributes!(starts_at: Time.now + 10.minutes)
      expect(Workshop.upcoming.count).to eq(2)
    end
  end

end