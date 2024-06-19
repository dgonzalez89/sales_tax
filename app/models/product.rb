class Product < ApplicationRecord
    validates :name, presence: true
    validates :price, presence: true, numericality: {only_float: true, greater_than: 0 }

    SALES_TAX = 10.freeze
    IMPORT_TAX = 5.freeze

    TAXED_ITEM_TYPES = ['music', 'cosmetics', 'technology'].freeze
    EXCEMPTED_ITEM_TYPES = ['books', 'food', 'medical']
    ALL_ITEM_TYPES = TAXED_ITEM_TYPES + EXCEMPTED_ITEM_TYPES
end
