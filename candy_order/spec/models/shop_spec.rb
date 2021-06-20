require 'rails_helper'

describe Shop do
  describe '#create' do
    it 'is valid' do
      shop = build(:shop)
      shop.valid?
      expect(shop).to be_valid
    end
  
  it "名前バリデーション" do
    shop = build(:shop,name: nil)
    shop.valid?
    expect(shop.errors[:name]).to include("を入力してください") #日本語で書く
  end
  
  it "メールアドレスバリデーション" do
    shop = build(:shop,email: nil)
    shop.valid?
    expect(shop.errors[:email]).to include("を入力してください") 
  end
  
  it "郵便番号バリデーション" do
    shop = build(:shop,postal_code: nil)
    shop.valid?
    expect(shop.errors[:postal_code]).to include("を入力してください") 
  end
  
  it "住所バリデーション" do
    shop = build(:shop,address: nil)
    shop.valid?
    expect(shop.errors[:address]).to include("を入力してください") 
  end
  
  it "電話番号バリデーション" do
    shop = build(:shop,telephone_number: nil)
    shop.valid?
    expect(shop.errors[:telephone_number]).to include("を入力してください") 
  end
  
  it "パスワードバリデーション" do
    shop = build(:shop,password: nil)
    shop.valid?
    expect(shop.errors[:password]).to include("を入力してください") 
  end
  
 end
end