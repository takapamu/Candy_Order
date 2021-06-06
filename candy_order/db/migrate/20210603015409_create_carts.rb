class CreateCarts < ActiveRecord::Migration[5.2]
  def change
    create_table :carts do |t|
      t.references :shop, foreign_key: true #外部キーを使用
      t.timestamps
    end
  end
end
