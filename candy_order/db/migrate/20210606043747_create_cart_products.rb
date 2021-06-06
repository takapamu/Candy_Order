class CreateCartProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :cart_products do |t|
      t.references :product, foreign_key: true
      t.references :cart, foreign_key: true
      t.integer :quantity #数量
      t.timestamps
    end
  end
end
