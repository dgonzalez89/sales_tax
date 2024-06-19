# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Product.create!([{
    name: 'Book ($12.49)',
    item_type: 'book',
    price: 12.49,
    is_imported: false
},
{
    name: 'Music CD ($14.99)',
    item_type: 'music',
    price: 14.99,
    is_imported: false
},
{
    name: 'Chocolate bar ($0.85)',
    item_type: 'food',
    price: 0.85,
    is_imported: false
},
{
    name: 'Imported box of chocolates ($10.00)',
    item_type: 'food',
    price: 10.00,
    is_imported: true
},
{
    name: 'Imported box of chocolates ($11.25)',
    item_type: 'food',
    price: 11.25,
    is_imported: true
},
{
    name: 'Imported bottle of perfume ($47.50)',
    item_type: 'cosmetics',
    price: 47.50,
    is_imported: true
},
{
    name: 'Imported Bottle of perfume ($27.99)',
    item_type: 'cosmetics',
    price: 27.99,
    is_imported: true
},
{
    name: 'Bottle of perfume ($18.99)',
    item_type: 'cosmetics',
    price: 18.99,
    is_imported: false
},
{
    name: 'Packet of headache pills ($9.75)',
    item_type: 'medical',
    price: 9.75,
    is_imported: false
}])

