class Order < ApplicationRecord
    has_many :order_items, dependent: :destroy
    accepts_nested_attributes_for :order_items, allow_destroy: true

    def calculate_total
        self.total = order_items.sum(&:total)
    end

    def calculate_total_taxes
        self.sale_taxes = order_items.sum(&:sales_tax)
    end
end