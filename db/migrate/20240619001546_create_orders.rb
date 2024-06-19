class CreateOrders < ActiveRecord::Migration[7.1]
  def change
    create_table :orders do |t|
      t.float :total
      t.float :total_taxes

      t.timestamps
    end
  end
end
