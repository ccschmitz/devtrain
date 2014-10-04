require 'rails_helper'

describe User do
  describe '#respond_to' do
    it { should respond_to(:first_name) }
    it { should respond_to(:last_name) }
    it { should respond_to(:email) }
    it { should respond_to(:password) }
    it { should respond_to(:password_confirmation) }
    it { should respond_to(:encrypted_password) }
    it { should respond_to(:reset_password_token) }
    it { should respond_to(:reset_password_sent_at) }
  end

  describe '#valid?' do
    it { should validate_presence_of(:first_name) }
    it { should validate_presence_of(:last_name) }
    it { should validate_presence_of(:email) }
    it { should validate_presence_of(:password) }
  end
end
