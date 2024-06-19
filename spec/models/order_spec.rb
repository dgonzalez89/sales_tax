
require 'rails_helper'

describe Order, type: :model do

  describe 'validations' do
    it 'is valid with valid attributes' do
      order = Order.new
      expect(order).to be_valid
    end
  end

  describe 'creating an order with items' do
    let(:product) { Product.create(name: 'Chocolate', price: 10.0) }

    it 'adds items to the order' do
      order = Order.create
      order.order_items.build(product: product, quantity: 3)
      order.save
      expect(order.order_items.count).to eq(1)
    end

    it 'calculates the total price of the order' do
      order = Order.create
      oi = order.order_items.build(product: product, quantity: 3)
      oi.calculate_sales_tax
      oi.calculate_subtotal
      oi.calculate_total_price
      order.calculate_total
      order.save
      total_price = product.price * 3.0
      expect(order.total).to eq(total_price)
    end
  end
end
