FactoryBot.define do
    factory :product do
      name { 'test_product' }
      item_type { Product::TAXED_ITEM_TYPES.first }
      price { 10.00 }
      is_imported { false }
    end
end