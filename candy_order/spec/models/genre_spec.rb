require 'rails_helper'

describe Product do
  describe '#create' do
    it 'ジャンル登録' do
      genre = build(:genre)
      genre.valid?
      expect(genre).to be_valid
    end
    
     it "商品名バリデーション" do
      genre = build(:genre,name: nil)
      genre.valid?
      expect(genre.errors[:name]).to include("を入力してください") #日本語で書く
    end
  end
end