# spec/models/product_spec.rb
require 'rails_helper'

describe Product, type: :model do

  describe 'validations' do
    it 'is valid with valid attributes' do
      product = Product.new(name: 'Chocolate', price: 10.0)
      expect(product).to be_valid
    end

    it 'is not valid without a name' do
      product = Product.new(name: nil, price: 10.0)
      expect(product).not_to be_valid
    end

    it 'is not valid without a price' do
      product = Product.new(name: 'Chocolate', price: nil)
      expect(product).not_to be_valid
    end

    it 'is not valid with a non-numeric price' do
      product = Product.new(name: 'Chocolate', price: 'abc')
      expect(product).not_to be_valid
    end

    it 'is not valid with a price less than or equal to 0' do
      product = Product.new(name: 'Chocolate', price: -1)
      expect(product).not_to be_valid
    end
  end
end
