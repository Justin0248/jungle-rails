require 'rails_helper'

RSpec.describe User, type: :model do
describe 'Validation' do
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
end
