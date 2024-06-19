FactoryBot.define do
    factory :order do
      sub_total { 10.0 }
      sale_taxes { 2.50 }
      total { 12.50 }
    end
end