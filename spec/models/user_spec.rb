require 'rails_helper'

RSpec.describe User, type: :model do
  context 'when creating a new user' do
    it 'creates a user with valid attributes' do
      user = User.new(name: 'John', email: 'john@example.com', password: 'password')
      expect(user).to be_valid
    end

    it 'does not create a user without a name' do
      user = User.new(email: 'john@example.com', password: 'password')
      expect(user).to_not be_valid
    end

    it 'does not create a user without an email' do
      user = User.new(name: 'John', password: 'password')
      expect(user).to_not be_valid
    end

    it 'does not create a user without a password' do
      user = User.new(name: 'John', email: 'john@example.com')
      expect(user).to_not be_valid
    end
  end
end