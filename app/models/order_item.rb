class OrderItem < ApplicationRecord
    belongs_to :order
    belongs_to :product
  
    validates :quantity, presence: true, numericality: { only_integer: true, greater_than: 0 }
  
    # Calculate sales tax of item
    def calculate_sales_tax
        tax = 0.0

        # Add sales tax to total if applies
        if product.item_type.in? Product::TAXED_ITEM_TYPES
            tax = (::Product::SALES_TAX * product.price / 100.0)
        end

        # Add import tax if applies
        if product.is_imported?
            tax = tax + import_tax
        end
        
        # round before sending back
        self.sales_tax = rounded_sales_tax(tax) * quantity
    end

    # Calculate price of item minus taxes
    def calculate_subtotal
       self.subtotal = price_per_quantity
    end

    def calculate_total_price
        self.total = self.subtotal + self.sales_tax
    end

    private

    def price_per_quantity
        product.price * quantity
    end

    # Rounded to $0.05
    def rounded_sales_tax(tax_rate)
        (tax_rate * 20).ceil / 20.0
    end

    # calculate import tax
    def import_tax
        (::Product::IMPORT_TAX * product.price / 100.0)
    end
  end