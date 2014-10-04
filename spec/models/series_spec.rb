require 'rails_helper'

describe Series do
  describe '#respond_to' do
    it { should respond_to(:name) }

    it { should have_many(:lessons) }
  end
end
