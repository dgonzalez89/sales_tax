FactoryBot.define do
    factory :order_item do
      total { 12.50 }
      sales_tax { 2.50 }
      subtotal { 10.00 }
      quantity { 1 }
      
    end
end