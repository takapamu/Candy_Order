require 'rails_helper'


describe Product do
  describe '#create' do
    it '商品登録' do
      genre = create(:genre)
      product = build(:product,genre_id: genre.id)
      product.valid?
      expect(product).to be_valid
    end
    
    it "商品名バリデーション" do
      product = build(:product,product_name: nil)
      product.valid?
      expect(product.errors[:product_name]).to include("を入力してください") #日本語で書く
    end
    
    it "製造元バリデーション" do
      product = build(:product,product_company: nil)
      product.valid?
      expect(product.errors[:product_company]).to include("を入力してください") 
    end
    
    it "商品金額バリデーション" do
      product = build(:product,product_price: nil)
      product.valid?
      expect(product.errors[:product_price]).to include("は数値で入力してください") 
    end
    
    it "製造元バリデーション" do
      product = build(:product,product_introduction: nil)
      product.valid?
      expect(product.errors[:product_introduction]).to include("を入力してください") 
    end
    
    it "ジャンルバリデーション" do
      product = build(:product, genre: nil)
      product.valid?
      expect(product.errors[:genre]).to include("を入力してください") 
    end
    
  end
end
