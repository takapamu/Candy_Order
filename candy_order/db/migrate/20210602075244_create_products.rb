class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.integer :genre_id
      t.string :product_company
      t.string :product_name
      t.string :image_id
      t.integer :product_price
      t.text :product_introduction
      t.boolean :is_active, null: false, default: true
      t.timestamps
    end
  end
end
