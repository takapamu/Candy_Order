class CreateCartProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :cart_products do |t|
      t.references :product,null: false,foreign_key: true
      t.references :cart,null: false,foreign_key: true
      t.integer :quantity #数量
      t.timestamps
    end
  end
end
