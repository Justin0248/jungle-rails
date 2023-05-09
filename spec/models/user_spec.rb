require 'rails_helper'

RSpec.describe User, type: :model do
describe 'Validation' do
  it 'validates name is valid' do
  user = User.new(name:'John', email:'John@doe.com', password:'password',password_confirmation:'password')
    user.name = nil
  expect(user).to_not be_valid
  end
  it 'validates password is valid' do
    user = User.new(name:'John', email:'John@doe.com', password:'password',password_confirmation:'password')
      user.password = nil
    expect(user).to_not be_valid
    end
    it 'validates email is valid' do
      user = User.new(name:'John', email:'John@doe.com', password:'password',password_confirmation:'password')
        user.email = nil
      expect(user).to_not be_valid
      end
  it 'validates correct password' do
  user = User.new(name:'John', email:'John@doe.com', password:'password',password_confirmation:'password')
  expect(user.password).to eq(user.password_confirmation)
end
it 'validates email is unique' do
  User.create(name: 'John', email: 'John@Doe.com', password: 'password', password_confirmation: 'password')
  user1 = User.new(name: 'John', email: 'John@Doe.com', password: 'password', password_confirmation: 'password')
  expect(user1).to be_invalid
end
end

describe '.authenticate_with_credentials' do
  before do
    User.create(name: 'John', email: 'John@Doe.com', password: 'password', password_confirmation: 'password')
  end
  it 'logs in with correct input' do
    email = 'John@Doe.com'
    password = 'password'
    user1 = User.authenticate_with_credentials(email, password)
  end
  it 'does not login with incorrect email' do
    email = 'John@Do.com'
    password = 'password'
    user1 = User.authenticate_with_credentials(email, password)
  end
  it 'does not login with incorrect password' do
    email = 'John@Doe.com'
    password = 'pasword'
    user1 = User.authenticate_with_credentials(email, password)
  end
  it 'logs in even with space in email' do
      email = 'John@Doe.com '
      password = 'password'
      user1 = User.authenticate_with_credentials(email, password)
    end
end
end
