class CreateOrderProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :order_products do |t|
      
          t.integer :amount
          t.integer :price

      t.timestamps
    end
  end
end
