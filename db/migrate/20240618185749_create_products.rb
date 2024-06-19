class CreateProducts < ActiveRecord::Migration[7.1]
  def change
    create_table :products do |t|
      t.string :name
      t.string :item_type
      t.float :price
      t.boolean :is_imported

      t.timestamps
    end
  end
end
