# require 'rails_helper'


# RSpec.describe Product, type: :model do
#   describe 'Validations' do
#     it 'validates name is present' do
#       product = Product.new(name: "flower", price: 12.99, quantity: 150, category: Category.new(name: 'fake'))
#       product.name = nil
#       expect(product).to_not be_valid
#     end

#     it 'validates price is present' do
#       product = Product.new(name: "flower", price: 12.99, quantity: 150, category: Category.new(name: 'fake'))
#       product.price_cents = nil
#       expect(product).to_not be_valid
#     end 

#     it 'validates quantity is present' do
#       product = Product.new(name: "flower", price: 12.99, quantity: 150, category: Category.new(name: 'fake'))
#       product.quantity = nil
#       expect(product).to_not be_valid
#     end

#     it 'validates category is present' do
#       product = Product.new(name: "flower", price: 12.99, quantity: 150, category: Category.new(name: 'fake'))
#       product.category = nil
#       expect(product).to_not be_valid
#     end
#   end
# end