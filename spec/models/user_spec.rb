require 'rails_helper'

RSpec.describe User, type: :model do
describe 'Validation' do
  it 'validates correct password' do
  user = User.new(firstName:'John', lastName:'Doe', email:'John@doe.com', password_digest:'password',confirm:'password')
  expect(user.password_digest).to eq(user.confirm)
end
end
end