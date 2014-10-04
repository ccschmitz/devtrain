require 'rails_helper'

describe Lesson do
  describe '#respond_to' do
    it { should respond_to(:name) }
    it { should respond_to(:slug) }
    it { should respond_to(:content) }

    # via acts-as-taggable-on
    it { should respond_to(:tags) }
    it { should respond_to(:tag_list) }

    it { should belong_to(:series) }
  end

  describe '#valid?' do

  end
end
